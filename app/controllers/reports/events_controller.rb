module Reports
  class EventsController < ::ApplicationController
    before_action :set_event, only: [:speakers, :attendees, :conferences, :email_speakers]

    def speakers
    end

    def attendees
    end

    def conferences
    end

    def email_speakers
      message = @event.send_emails
      render json: { message: message }
    end

    private

    def set_event
      @event = Event.find(params[:event_id])
    end

    def events_params
      params.permit(:event_id)
    end
  end
end
