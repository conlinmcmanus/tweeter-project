class User < ApplicationRecord
  has_many :twits
  has_many :followings
  has_many :followed_followings, class_name: "Following", foreign_key: "follower_id"
  has_many :follower_followings, class_name: "Following", foreign_key: "follower_id"
  has_many :followers, through: :follower_followings
  has_many :followeds, through: :followed_followings

  def users_following
    followeds
  end

end
