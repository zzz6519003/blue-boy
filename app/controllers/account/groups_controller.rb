class Account::GroupsController < ApplicationController

  def index
    @groups = current_user.participated_groups
  end

end
