class AdressesController < ApplicationController
  
  before_action :load_adresse, only: [:edit, :update]

  def new
    @adresse = Adresse.new
    render :new, layout: nil
  end

  def create
    @adresse = Adresse.new(adresse_params)
    if @adresse.save
      @adresse.adressable_type == "Contact" ? redirect_to(root_path) : redirect_to(evenements_path)
    else
      flash[:error]  = @adresse.errors.full_messages.join('<br/>')
      redirect_to root_path
    end
  end

  def edit
    render :edit, layout: nil
  end

  def update
    if @adresse.update(adresse_params)
      render :update, layout: nil
    else
      @errors  = @adresse.errors.full_messages.join(', ')
      render :error, layout: nil
    end
  end

  private
    def adresse_params
      params.require(:adresse).permit(:adresse, :ville, :code_postal, :adressable_id, :adressable_type)
    end

    def load_adresse
      @adresse = Adresse.find(params[:id])
    end

end