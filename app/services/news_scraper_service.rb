class NewsScraperService
  def request_articles(form_data)
    json_form_data = jsonify_form_data(form_data)
    make_post_request(articles_request_endpoint, json_form_data)
  end

  def scrape_articles(link)

  end

  private
    def connection
      Faraday.new(news_scraper_url) do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def make_request(endpoint, request_data)
      request = connection.get(endpoint) do |req|
        req.body = request_data
      end
      binding.pry
      JSON.parse(request)
    end

    def jsonify_form_data(form_data)
      {
        startDate: form_data['start_date'],
        endDate: form_data['end_date'],
        keywords: form_data['keywords'],
        amount: form_data['amount']
      }.to_json
    end

    def news_scraper_url
      'http://localhost:5000'
    end

    def articles_request_endpoint
      'api/v1/articles'
    end

    def scrape_articles_endpoint
      'api/v2/scrape-articles'
    end
end
