class StaticPagesController < ApplicationController
  skip_before_filter :require_login
  def about

  end

  def index
    @page_description = "I'm a Toronto-based web developer, with a focus on Ruby, Rails, and JavaScript. In August, 2015, I completed the Bitmaker Labs web development program."



    @posts = Post.all.order(public_date: :desc).limit(1)
    featured_projects = Project.where("featured = ?", true).order(public_date: :desc).limit(3)
    other_projects = Project.where.not("featured = ?", true).order(public_date: :desc).limit(3)
    @projects = []
    @projects.concat(featured_projects) if (featured_projects != nil)
    extras_needed = 3 - (featured_projects.count || 0)

    extras_needed.times do |n|
      @projects << other_projects[n - 1]
    end

    @projects
  end
end
