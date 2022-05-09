class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects.as_json 
  end
end
