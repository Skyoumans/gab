class Api::ContactsController < ApplicationController

  def index
    @contacts = Contacts.all
    render json: @contacts
  end

end
