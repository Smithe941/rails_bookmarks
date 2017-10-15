class User < ApplicationRecord
  devise :database_authenticatable, :rememberable, :omniauthable,
         omniauth_providers: [:facebook]

  has_many :bookmarks, dependent: :destroy

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name   # assuming the user model has a name
      user.oauth_token = auth.credentials.token
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def facebook_friends
    graph = Koala::Facebook::API.new(oauth_token)
    friends = graph.get_connections('me', 'friends')
    friends.map! { |f| f['id'] }
    User.where(uid: friends)
  end
end
