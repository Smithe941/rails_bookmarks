class Bookmark < ApplicationRecord
  belongs_to :user

  def self.search(query)
    where('url LIKE ?', "%#{query}%")
  end
end
