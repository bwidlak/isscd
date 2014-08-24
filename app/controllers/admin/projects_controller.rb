class Admin::ProjectsController < AdminController
  before_action :set_admin_project, only: [:show, :edit, :update, :destroy, :edit_multiple_images, :update_multiple_images, :edit_multiple_descriptions, :update_multiple_descriptions]

  # GET /admin/projects
  # GET /admin/projects.json
  def index
    @admin_projects = Admin::Project.all
  end

  # GET /admin/projects/1
  # GET /admin/projects/1.json
  def show
  end

  # GET /admin/projects/new
  def new
    @admin_project = Admin::Project.new
  end

  # GET /admin/projects/1/edit
  def edit
  end

  # POST /admin/projects
  # POST /admin/projects.json
  def create
    @admin_project = Admin::Project.new(admin_project_params)

    respond_to do |format|
      if @admin_project.save
        format.html { redirect_to @admin_project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @admin_project }
      else
        format.html { render :new }
        format.json { render json: @admin_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/projects/1
  # PATCH/PUT /admin/projects/1.json
  def update
    respond_to do |format|
      if @admin_project.update(admin_project_params)
        format.html { redirect_to @admin_project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_project }
      else
        format.html { render :edit }
        format.json { render json: @admin_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/projects/1
  # DELETE /admin/projects/1.json
  def destroy
    @admin_project.destroy
    respond_to do |format|
      format.html { redirect_to admin_projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit_multiple_images
    @admin_images = Admin::Image.all
  end

  def update_multiple_images
    @admin_project.update_assets(admin_project_assets_params.map(&:to_i), 'image')
    redirect_to admin_project_path
  end

  def edit_multiple_descriptions
    @admin_descriptions = Admin::Description.all
  end

  def update_multiple_descriptions
    @admin_project.update_assets(admin_project_assets_params.map(&:to_i), 'description')
    redirect_to admin_project_path
  end

  def descriptions
    @available_descriptions = Admin::Project.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_admin_project
      @admin_project = Admin::Project.find_by_permalink(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_project_params
      params.require(:admin_project).permit(:title, :address, :permalink, :sequence, :published)
    end

    def admin_project_assets_params
      params.require(:project_assets)
    end
end
