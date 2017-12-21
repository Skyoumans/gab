class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by_id(contact_id)
    render json: @contact
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    end
  end

  def update
    contact_id = params[:id]
    @contact = Contact.find_by_id(contact_id)
    @contact.update_attributes(contact_params)
    render json: @contact
  end

  def destroy
    contact_id = params[:id]
    @contact = Contact.find_by_id(contact_id)
    @contact.destroy
    render json: {
      msg: "Contact Deleted!"
    }
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :first_name, :last_name, :board_member, :recognition, :status, :image)
  end

end
