class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @adresse = Adresse.new
  end

  def new
    @contact = Contact.new
    render :new, layout: nil
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :error, layout: nil
    end
  end


  def update
  end

  def destroy
  end

  private
    def contact_params
      params.require(:contact).permit(:nom, :prenom)
    end
end
