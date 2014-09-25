class AddCountDownDaysToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :count_down_days, :integer
  end
end
