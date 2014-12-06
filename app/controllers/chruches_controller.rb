class ChruchesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chruch, only: [:show, :edit, :update, :destroy]

  # GET /chruches
  # GET /chruches.json
  def index
    if current_user.chruch_id == nil
      @chruches = Chruch.all
    else
      @chruches = Chruch.where(:id=>current_user.chruch_id)
    end
  end

  # GET /chruches/1
  # GET /chruches/1.json
  def show
  end

  # GET /chruches/new
  def new
    @chruch = Chruch.new
    @members = Member.where(:ministerial_role_id=>1)
  end

  # GET /chruches/1/edit
  def edit
    @members = Member.where(:ministerial_role_id=>1)
  end

  # POST /chruches
  # POST /chruches.json
  def create
    @chruch = Chruch.new(chruch_params)

    respond_to do |format|
      if @chruch.save
        format.html { redirect_to @chruch, notice: 'Chruch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chruch }
      else
        format.html { render action: 'new' }
        format.json { render json: @chruch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chruches/1
  # PATCH/PUT /chruches/1.json
  def update
    respond_to do |format|
      if @chruch.update(chruch_params)
        format.html { redirect_to @chruch, notice: 'Chruch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chruch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chruches/1
  # DELETE /chruches/1.json
  def destroy
    @chruch.destroy
    respond_to do |format|
      format.html { redirect_to chruches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chruch
      @chruch = Chruch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chruch_params
      params.require(:chruch).permit(:name, :phone, :address, :neighborhood, :city, :state, :country, :zip_code, :member_id)
    end
end
