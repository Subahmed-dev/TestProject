module Reports
  class ExternalApiController < ::ApplicationController
    def index
      response = Faraday.get(ENV['EXTERNAL_API_URL'])
      data = JSON.parse(response.body)

      @api_data = Kaminari.paginate_array(data.sort_by { |item| item['id'].to_i }).page(params[:page]).per(params[:per_page])
    end
  end
end
