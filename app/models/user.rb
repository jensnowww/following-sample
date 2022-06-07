class User < ApplicationRecord
  has_many :follows, :as => :followable
  has_many :followings, through: :follows, source: :user
  has_many :followable_followers, class_name: "Follow", :foreign_key => "user_id"
  has_many :followers, through: :followable_followers, source: :followable, source_type: "User"
   


  def follow!(user)
    self.follows.create(user: user)
  end
end
