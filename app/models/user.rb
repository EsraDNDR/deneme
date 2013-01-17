class User < ActiveRecord::Base
  has_many :loans, :dependent => :destroy
  has_many :friends, :dependent => :destroy
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_as = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end