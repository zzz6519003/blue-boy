class AddAttachmentWechatGroupToGroups < ActiveRecord::Migration
  def self.up
    add_attachment :groups, :wechat_group
  end

  def self.down
    remove_attachment :groups, :wechat_group
  end
end
