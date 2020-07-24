class Article < ApplicationRecord
  def self.headlines
    all.pluck(:headline)
  end  
end
