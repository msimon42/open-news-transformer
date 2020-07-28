class Article < ApplicationRecord
  def self.headlines
    all.pluck(:headline)
  end

  def self.exists?(url)
    where(url: url).any?
  end
end
