class Group < ActiveRecord::Base
  has_many :posts
  validates :title, :presence => true

  has_many :group_users
  has_many :members, :through => :group_users, :source => :group
end
