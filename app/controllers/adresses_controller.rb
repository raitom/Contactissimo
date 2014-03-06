class AdressesController < ApplicationController
  def new
    @adresse = Adresse.new
    render :new, layout: nil
  end

  def create
    @adresse = Adresse.new(adresse_params)
    if @adresse.save
      @adresse.adressable_type == "Contact" ? redirect_to(root_path) : redirect_to(evenements_path)
    else
      render :error, layout: nil
    end
  end

  private
    def adresse_params
      params.require(:adresse).permit(:adresse, :ville, :code_postal, :adressable_id, :adressable_type)
    end
end