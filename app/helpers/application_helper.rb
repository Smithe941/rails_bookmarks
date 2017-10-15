# frozen_string_literal: true

module ApplicationHelper
  def preview(url)
    cloudinary_url(
      url,
      type: 'url2png', crop: 'fill',
      width: 200, height: 200,
      gravity: :north, sign_url: true
    )
  end
end
