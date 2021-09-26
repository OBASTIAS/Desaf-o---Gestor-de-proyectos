class ProjectsController < ApplicationController
  
  def index
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
  end

  def new
    @project = Project.new
  end

  def create
    
    @project = Project.create(project_params)
    if @project.save
      redirect_to root_path, notice: "Se guardado el projecto correctamente"
    else
      redirect_to root_path, alert: "No se pudo guardar el projecto"
    end
  end
  
  private

  def project_params
    params.require(:project).permit(:name, :description, :state, :initial_date, :finish_date)
  end
end
