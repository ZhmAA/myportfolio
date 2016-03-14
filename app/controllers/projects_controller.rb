class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all.reverse
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to action: :index
    else
      render :index
    end
  end

  def delete
    @project = Project.find(params[:id])
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to action: :index
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :image)
  end

end
