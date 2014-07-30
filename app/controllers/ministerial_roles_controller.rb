class MinisterialRolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_ministerial_role, only: [:show, :edit, :update, :destroy]

  # GET /ministerial_roles
  # GET /ministerial_roles.json
  def index
    @ministerial_roles = MinisterialRole.all
  end

  # GET /ministerial_roles/1
  # GET /ministerial_roles/1.json
  def show
  end

  # GET /ministerial_roles/new
  def new
    @ministerial_role = MinisterialRole.new
  end

  # GET /ministerial_roles/1/edit
  def edit
  end

  # POST /ministerial_roles
  # POST /ministerial_roles.json
  def create
    @ministerial_role = MinisterialRole.new(ministerial_role_params)

    respond_to do |format|
      if @ministerial_role.save
        format.html { redirect_to @ministerial_role, notice: 'Ministerial role was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ministerial_role }
      else
        format.html { render action: 'new' }
        format.json { render json: @ministerial_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ministerial_roles/1
  # PATCH/PUT /ministerial_roles/1.json
  def update
    respond_to do |format|
      if @ministerial_role.update(ministerial_role_params)
        format.html { redirect_to @ministerial_role, notice: 'Ministerial role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ministerial_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ministerial_roles/1
  # DELETE /ministerial_roles/1.json
  def destroy
    @ministerial_role.destroy
    respond_to do |format|
      format.html { redirect_to ministerial_roles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ministerial_role
      @ministerial_role = MinisterialRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ministerial_role_params
      params.require(:ministerial_role).permit(:name)
    end
end
