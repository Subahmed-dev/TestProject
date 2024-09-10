class SpeakerMailer < ApplicationMailer
  def event_notification(speaker, event)
    @speaker = speaker
    @event = event
    mail(to: @speaker.email, subject: "Information about #{@event.title}")
  end
end