class ProjectController < ApplicationController
  def index
  	@project = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks
  end
end
