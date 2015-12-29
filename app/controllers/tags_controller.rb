class TagsController < ApplicationController
  skip_before_filter :require_login, only: [:show]
  def show
    tags = params[:tags]
    @pluralized = ''
    if tags
      @posts = Post.tagged_with(params[:tags], any: true)
      @projects = Project.tagged_with(params[:tags], any: true)
      @tag_name = params[:tags].join(', ')
      @pluralized = 's' if tags.count > 1
    else
      @posts = Post.tagged_with(params[:tag])
      @projects = Project.tagged_with(params[:tag])
      @tag_name = params[:tag]
    end
  end

  private

  def tags_params
    params.require(:tag).permit(tags: [])
  end
end
