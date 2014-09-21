class Group < ActiveRecord::Base
  has_many :posts
  validates :title, :presence => true

  has_many :group_users
  has_many :members, :through => :group_users, :source => :group

  belongs_to :owner, :class_name => "User", :foreign_key => :user_id

  def editable_by?(user)
    user && user == owner
  end
end
