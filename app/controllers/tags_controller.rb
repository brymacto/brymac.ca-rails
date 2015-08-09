class TagsController < ApplicationController
  def show
    @posts = Post.tagged_with(params[:tag])
    # @projects = Project.tagged_with(params[:tag])
  end
  private

  def tags_params
    params.require(:tag).permit(:type)
  end
end
