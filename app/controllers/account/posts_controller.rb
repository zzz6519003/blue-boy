class Account::PostsController < ApplicationController

  def index
    @posts = current_user.posts.order("updated_at DESC")
  end

end
