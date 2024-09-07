class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
 
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render :new #not really necessary, but something would go here
    else
      render :new, alert: 'Error sending message.'
    end
  end
 
  private
 
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end