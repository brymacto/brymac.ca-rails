class ProjectsController < ApplicationController
  def create
    @project = Project.new(project_params)
    if @project.save
      if (@project.public_date == nil)
        @project.public_date = @project.created_at.to_date
        @project.save
      end
      redirect_to @project
    else
      render 'new'
    end
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.friendly.find(params[:id])
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  def update
    @project = Project.friendly.find(params[:id])
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.friendly.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  def index
    @projects = Project.all.order(public_date: :desc)
  end

  private

    def project_params
      params.require(:project).permit(:title, :description, :code_url, :live_url, :public_date, :tag_list, :photo, :remove_photo, :photo_caption, :featured, :photo_size)
    end
end
