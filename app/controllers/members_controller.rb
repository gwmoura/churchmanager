class MembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  # GET /members
  # GET /members.json
  def index
    if params[:name].nil?
      @members = Member.where('church_id=0 OR church_id=?',current_user.chruch_id).order('name').page(params['page'])
    else
      @members = Member.where('name LIKE ? AND (church_id=0 OR church_id=?)',params[:name]+'%',current_user.chruch_id).page(params['page'])
    end
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
    @departaments = Departament.all
    @ministerial_roles = MinisterialRole.all
    @churchs = Chruch.all
  end

  # GET /members/1/edit
  def edit
    @departaments = Departament.all
    @ministerial_roles = MinisterialRole.all
    @churchs = Chruch.all
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, notice: 'Member was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member }
      else
        format.html { render action: 'new' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:name, :birth_date, :sex, :address, :neighborhood, :city, :state, :country, :zip_code, :home_phone, :mobile_phone, :work_phone, :email, :blood_type, :marital_status, :congregating, :photo, :withdrawl_date, :departament_id, :skills, :worship_date, :situation, :profession, :education, :baptism_date, :wedding_date, :ministerial_role_id, :facebook, :twitter, :instagram, :whatsapp, :church_id)
    end
end
