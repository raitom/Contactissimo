class EvenementsController < ApplicationController
  def index
    @evenements = Evenement.all
    @adresse = Adresse.new
  end

  def new
    @evenement = Evenement.new
    render :new, layout: nil
  end

  def create
    @evenement = Evenement.new(evenement_params)
    if @evenement.save
      redirect_to evenements_path
    else
      render :error, layout: nil
    end
  end

  def create_adresse

  end

  def update
  end

  def destroy
  end

  private
    def evenement_params
      params.require(:evenement).permit(:nom, :theme)
    end
end
