class DepartamentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_departament, only: [:show, :edit, :update, :destroy]

  # GET /departaments
  # GET /departaments.json
  def index
    @departaments = Departament.all
  end

  # GET /departaments/1
  # GET /departaments/1.json
  def show
  end

  # GET /departaments/new
  def new
    @departament = Departament.new
  end

  # GET /departaments/1/edit
  def edit
  end

  # POST /departaments
  # POST /departaments.json
  def create
    @departament = Departament.new(departament_params)

    respond_to do |format|
      if @departament.save
        format.html { redirect_to @departament, notice: 'Departament was successfully created.' }
        format.json { render action: 'show', status: :created, location: @departament }
      else
        format.html { render action: 'new' }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departaments/1
  # PATCH/PUT /departaments/1.json
  def update
    respond_to do |format|
      if @departament.update(departament_params)
        format.html { redirect_to @departament, notice: 'Departament was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @departament.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departaments/1
  # DELETE /departaments/1.json
  def destroy
    @departament.destroy
    respond_to do |format|
      format.html { redirect_to departaments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departament
      @departament = Departament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departament_params
      params.require(:departament).permit(:name, :description, :member_id)
    end
end
