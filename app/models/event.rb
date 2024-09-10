class Event < ApplicationRecord
  has_many :conferences
  has_many :speakers, through: :conferences
  has_many :attendees, through: :conferences

  validates :title, presence: true, length: { maximum: 255, minimum: 5 }
  validates :starts_at, presence: true, date: { after: Proc.new { Time.now } }
  validates :ends_at, presence: true, date: { after: :starts_at }

  def send_emails
    success = true

    speakers.each do |speaker|
      next if speaker.email_sent

      begin
        SpeakerMailer.event_notification(speaker, self).deliver_now
        speaker.update!(email_sent: true)
      rescue StandardError => e
        Rails.logger.error "Error sending email to #{speaker.email}: #{e.message}"
        success = false
        break
      end
    end

    @message = success ? 'Emails sent successfully' : 'Error sending email'
  end
end
