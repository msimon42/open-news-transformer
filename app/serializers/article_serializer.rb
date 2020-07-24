class ArticleSerializer
  def self.save_to_db(articles_json)
    articles_json.each do |article|
        Article.create(
          url: article[:url],
          headine: article[:headline]
        )
    end
  end

  def self.extract_headlines(articles_json)
    articles_json.map do |article|
      article[:headline]
    end
  end
end
