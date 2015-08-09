class StaticPagesController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc).limit(1)
  end
end
