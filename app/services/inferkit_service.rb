class InferkitService

  private
    def connection
      Faraday.new(url: inferkit_endpoint) do |f|
        f.adapter Faraday.default_adapter
      end
    end

    def inferkit_endpoint
      'https://api.inferkit.com/v1/models/standard/generate'
    end
end
