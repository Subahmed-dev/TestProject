module Reports
  class ConferencesController < ::ApplicationController
    def attendees
      @conference = Conference.includes(:attendees).find_by(id: attendee_params[:conference_id])

      if @conference
        @attendees = @conference.attendees.page(params[:page]).per(params[:per_page])
      end
    end

    private

    def attendee_params
      params.permit(:conference_id, :page, :per_page)
    end
  end
end
