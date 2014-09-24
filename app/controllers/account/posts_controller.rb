class Account::PostsController < ApplicationController

  def index
    @posts = current_user.posts.recent
  end

end
