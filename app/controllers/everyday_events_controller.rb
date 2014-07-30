class EverydayEventsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_everyday_event, only: [:show, :edit, :update, :destroy]

  # GET /everyday_events
  # GET /everyday_events.json
  def index
    @everyday_events = EverydayEvent.all
  end

  # GET /everyday_events/1
  # GET /everyday_events/1.json
  def show
  end

  # GET /everyday_events/new
  def new
    @everyday_event = EverydayEvent.new
  end

  # GET /everyday_events/1/edit
  def edit
  end

  # POST /everyday_events
  # POST /everyday_events.json
  def create
    @everyday_event = EverydayEvent.new(everyday_event_params)

    respond_to do |format|
      if @everyday_event.save
        format.html { redirect_to @everyday_event, notice: 'Everyday event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @everyday_event }
      else
        format.html { render action: 'new' }
        format.json { render json: @everyday_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /everyday_events/1
  # PATCH/PUT /everyday_events/1.json
  def update
    respond_to do |format|
      if @everyday_event.update(everyday_event_params)
        format.html { redirect_to @everyday_event, notice: 'Everyday event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @everyday_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /everyday_events/1
  # DELETE /everyday_events/1.json
  def destroy
    @everyday_event.destroy
    respond_to do |format|
      format.html { redirect_to everyday_events_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_everyday_event
      @everyday_event = EverydayEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def everyday_event_params
      params.require(:everyday_event).permit(:name, :schedule, :day, :repetition, :category_event_id)
    end
end
