class TagsController < ApplicationController
  def show
    tags = params[:tags]
    if tags
      @posts = Post.tagged_with(params[:tags], :any => true)
      @projects = Project.tagged_with(params[:tags], :any => true)
      @tag_name = params[:tags].join(', ')
    else
      @posts = Post.tagged_with(params[:tag])
      @projects = Project.tagged_with(params[:tag])
      @tag_name = params[:tag]
    end
  end
  private

  def tags_params
    params.require(:tag).permit(:tags => [])
  end
end
