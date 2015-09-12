class StaticPagesController < ApplicationController
  skip_before_filter :require_login
  def about

  end

  def index
    @page_description = "I'm a Toronto-based web developer, with a focus on Ruby, Rails, and JavaScript. In August, 2015, I completed the Bitmaker Labs web development program."


    featured_projects = Project.where("featured = ?", true).order(title: :asc, public_date: :desc).limit(3)
    other_projects = Project.where.not("featured = ?", true).order(title: :asc, public_date: :desc).limit(3)
    @projects = []
    @projects.concat(featured_projects) if (featured_projects != nil)
    extras_needed = 3 - (featured_projects.count || 0)
    extras_needed = 0 if extras_needed < 0
    extras_needed.times do |n|
      @projects << other_projects[n]
    end
    @projects
  end
end
