class ProjectsController < ApplicationController

  before_filter :load_project, :load_hash_for_google_maps, only: :show

  def index
    redirect_to action: :show, id: 'recent-projects'
  end

  def show
    
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :permalink, :sequence)
    end

    def load_project
      @project = Project.find_by_permalink(params[:id])
    end

    def load_hash_for_google_maps
      if @project.children.present?
        @hash = Gmaps4rails.build_markers(@project.children) do |child, marker|
          marker.lat child.latitude
          marker.lng child.longitude
        end
      else
        @hash = Gmaps4rails.build_markers([@project]) do |project, marker|
          marker.lat project.latitude
          marker.lng project.longitude
        end
      end
    end
end
