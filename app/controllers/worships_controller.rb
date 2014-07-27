class WorshipsController < ApplicationController
  before_action :set_worship, only: [:show, :edit, :update, :destroy]

  # GET /worships
  # GET /worships.json
  def index
    @worships = Worship.all
  end

  # GET /worships/1
  # GET /worships/1.json
  def show
  end

  # GET /worships/new
  def new
    @worship = Worship.new
  end

  # GET /worships/1/edit
  def edit
  end

  # POST /worships
  # POST /worships.json
  def create
    @worship = Worship.new(worship_params)

    respond_to do |format|
      if @worship.save
        format.html { redirect_to @worship, notice: 'Worship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @worship }
      else
        format.html { render action: 'new' }
        format.json { render json: @worship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worships/1
  # PATCH/PUT /worships/1.json
  def update
    respond_to do |format|
      if @worship.update(worship_params)
        format.html { redirect_to @worship, notice: 'Worship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @worship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worships/1
  # DELETE /worships/1.json
  def destroy
    @worship.destroy
    respond_to do |format|
      format.html { redirect_to worships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worship
      @worship = Worship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worship_params
      params.require(:worship).permit(:name, :weekday, :schedule)
    end
end
