class ContactsController < ApplicationController
  
  before_action :load_contact, only: [:edit, :update]

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

  def edit
    render :edit, layout: nil
  end

  def update
    if @contact.update(contact_params)
      redirect_to contacts_path
    else
      render :error, layout: nil
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to(root_path)
  end

  private
    def contact_params
      params.require(:contact).permit(:nom, :prenom)
    end

    def load_contact
      @contact = Contact.find(params[:id])
    end
end
