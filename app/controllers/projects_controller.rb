class ProjectsController < ApplicationController
  before_action :authenticate_user

  def index
    projects = Project.where(user_id: current_user.id)
    render json: projects.as_json 
  end

  def create
    project = Project.new(
      user_id: current_user.id,
      title: params[:title],
      section: params[:section],
      section_number: params[:section_number]
    )
    
    project.save
    render json: project.as_json 
  end
end
