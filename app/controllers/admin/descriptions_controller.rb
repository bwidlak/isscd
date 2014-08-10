class Admin::DescriptionsController < AdminController
  before_action :set_admin_description, only: [:show, :edit, :update, :destroy]

  # GET /admin/descriptions
  # GET /admin/descriptions.json
  def index
    @admin_descriptions = Admin::Description.all
  end

  # GET /admin/descriptions/1
  # GET /admin/descriptions/1.json
  def show
  end

  # GET /admin/descriptions/new
  def new
    @admin_description = Admin::Description.new
  end

  # GET /admin/descriptions/1/edit
  def edit
  end

  # POST /admin/descriptions
  # POST /admin/descriptions.json
  def create
    @admin_description = Admin::Description.new(admin_description_params)

    respond_to do |format|
      if @admin_description.save
        format.html { redirect_to @admin_description, notice: 'Description was successfully created.' }
        format.json { render :show, status: :created, location: @admin_description }
      else
        format.html { render :new }
        format.json { render json: @admin_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/descriptions/1
  # PATCH/PUT /admin/descriptions/1.json
  def update
    respond_to do |format|
      if @admin_description.update(admin_description_params)
        format.html { redirect_to @admin_description, notice: 'Description was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_description }
      else
        format.html { render :edit }
        format.json { render json: @admin_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/descriptions/1
  # DELETE /admin/descriptions/1.json
  def destroy
    @admin_description.destroy
    respond_to do |format|
      format.html { redirect_to admin_descriptions_url, notice: 'Description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_description
      @admin_description = Admin::Description.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_description_params
      params.require(:admin_description).permit(:name, :text)
    end
end
