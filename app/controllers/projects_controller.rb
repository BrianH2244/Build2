class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :authorized_user, :only => :destroy

  def projects
    if signed_in?
      @project = Project.new
      @goalfeed_items = current_user.goalfeed.paginate(:page => params[:page])
    end
  end

  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:success] = "Project created!"
      redirect_to projects_path
    else
      @goalfeed_items = []
      render 'projects/projects'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

    def authorized_user
      @project = current_user.projects.find_by_id(params[:id])
      redirect_to root_path if @project.nil?
    end
end
