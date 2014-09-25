class Group < ActiveRecord::Base
  has_many :posts

  has_many :group_users
  has_many :members, :through => :group_users, :source => :group

  belongs_to :owner, :class_name => "User", :foreign_key => :user_id

  has_attached_file :wechat_group, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :title, :presence => true
  validates_attachment_content_type :wechat_group, :content_type => /\Aimage\/.*\Z/

  def editable_by?(user)
    user && user == owner
  end

  def log
    puts "sdfs"
  end
end
