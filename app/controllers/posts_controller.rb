class PostsController < ApplicationController
  skip_before_filter :require_login, only: [:index, :show]
  def index
    if current_user
      @posts = Post.all.order(public_date: :desc)
    else
      @posts = Post.where('public_date <= ?', Time.now).order(public_date: :desc)
    end
  end
  def edit
    @post = Post.friendly.find(params[:id])
  end
  def new
    @post = Post.new
  end
  def show
    @post = Post.friendly.find(params[:id])
    @photo_copyright = {url: @post.photo_copyright_url, name: @post.photo_copyright_name}
  end
  def create
    @post = Post.new(post_params)
    if @post.save
      if (@post.public_date == nil)
        @post.public_date = @post.created_at.to_date
        @post.save
      end
      redirect_to @post
    else
      render 'new'
    end
  end
  def update
    @post = Post.friendly.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  def destroy
    @post = Post.friendly.find(params[:id])
    @post.destroy
 
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :contents, :public_date, :tag_list, :photo, :remove_photo, :photo_caption, :photo_size, :project_id, :photo_copyright_name, :photo_copyright_url)
  end
end
