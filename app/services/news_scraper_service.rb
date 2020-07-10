class NewsScraperService

  private
    def connection
      Faraday.new(articles_request_endpoint) do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def articles_request_endpoint
      'https://www.news-scraper.com/api/request-articles'
    end
end
