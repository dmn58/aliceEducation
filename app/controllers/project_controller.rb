class ProjectController < ApplicationController
  def index
  	@project = Project.all
  end

  def show
  	@project = Project.find(params[:id])
  	@tasks = @project.tasks

  	@joined = false

  	if !current_user.nil? && !current_user.projects.nil?
  		@joined = current_user.projects.include?(@project)
  	end

  	@user = @project.users.order('created_at desc').first(10)
  end
end
