class ContactsController < ApplicationController
  def index
    
  end

  def new

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      return @contact.save
    end
    render action: 'new'
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
