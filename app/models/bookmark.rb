class Bookmark < ApplicationRecord
  belongs_to :user
  paginates_per 8

  def self.search(query)
    where('url LIKE ?', "%#{query}%")
  end
end
