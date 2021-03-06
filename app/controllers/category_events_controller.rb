class CategoryEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category_event, only: [:show, :edit, :update, :destroy]

  # GET /category_events
  # GET /category_events.json
  def index
    @category_events = CategoryEvent.all
  end

  # GET /category_events/1
  # GET /category_events/1.json
  def show
  end

  # GET /category_events/new
  def new
    @category_event = CategoryEvent.new
  end

  # GET /category_events/1/edit
  def edit
  end

  # POST /category_events
  # POST /category_events.json
  def create
    @category_event = CategoryEvent.new(category_event_params)

    respond_to do |format|
      if @category_event.save
        format.html { redirect_to @category_event, notice: 'Category event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category_event }
      else
        format.html { render action: 'new' }
        format.json { render json: @category_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_events/1
  # PATCH/PUT /category_events/1.json
  def update
    respond_to do |format|
      if @category_event.update(category_event_params)
        format.html { redirect_to @category_event, notice: 'Category event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_events/1
  # DELETE /category_events/1.json
  def destroy
    @category_event.destroy
    respond_to do |format|
      format.html { redirect_to category_events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_event
      @category_event = CategoryEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_event_params
      params.require(:category_event).permit(:name)
    end
end
