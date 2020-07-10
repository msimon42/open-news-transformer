class NewsScraperService
  def request_articles(form_data)
    json_form_data = jsonify_form_data(form_data)

    request = connection.post do |req|
      req.body = json_form_data
    end

    JSON.parse(request)
  end

  private
    def connection
      Faraday.new(articles_request_endpoint) do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def jsonify_form_data(form_data)
      {
        startDate: form_data['start_date'],
        endDate: form_data['end_date'],
        keywords: form_data['keywords'],
        amount: form_data['amount']
      }.to_json
    end

    def news_scraper_uri
      'https://www.news-scraper.com'
    end
end
