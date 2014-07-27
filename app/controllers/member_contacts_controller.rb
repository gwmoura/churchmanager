class MemberContactsController < ApplicationController
  before_action :set_member_contact, only: [:show, :edit, :update, :destroy]

  # GET /member_contacts
  # GET /member_contacts.json
  def index
    @member_contacts = MemberContact.all
  end

  # GET /member_contacts/1
  # GET /member_contacts/1.json
  def show
  end

  # GET /member_contacts/new
  def new
    @member_contact = MemberContact.new
  end

  # GET /member_contacts/1/edit
  def edit
  end

  # POST /member_contacts
  # POST /member_contacts.json
  def create
    @member_contact = MemberContact.new(member_contact_params)

    respond_to do |format|
      if @member_contact.save
        format.html { redirect_to @member_contact, notice: 'Member contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @member_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @member_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_contacts/1
  # PATCH/PUT /member_contacts/1.json
  def update
    respond_to do |format|
      if @member_contact.update(member_contact_params)
        format.html { redirect_to @member_contact, notice: 'Member contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @member_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_contacts/1
  # DELETE /member_contacts/1.json
  def destroy
    @member_contact.destroy
    respond_to do |format|
      format.html { redirect_to member_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_contact
      @member_contact = MemberContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_contact_params
      params.require(:member_contact).permit(:member_id, :contact_name, :contact_number, :degree_kinship)
    end
end
