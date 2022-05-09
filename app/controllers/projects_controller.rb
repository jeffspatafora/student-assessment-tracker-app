class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects.as_json 
  end

  def create
    project = Project.new(
      title: params[:title],
      section: params[:section],
      section_number: params[:section_number]
    )
    
    project.save
    render json: project.as_json 
  end
end
