class Bookmark < ApplicationRecord
  belongs_to :user
  paginates_per 8

  validates_presence_of :title, :url

  def self.search(query)
    where('url LIKE ?', "%#{query}%")
  end
end
