class EvenementsController < ApplicationController
  
  before_action :load_evenement, only: [:edit, :update]

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

  def edit
    render :edit, layout: nil
  end

  def update
    if @evenement.update(evenement_params)
      redirect_to evenements_path
    else
      render :error, layout: nil
    end
  end

  def destroy
  end

  private
    def evenement_params
      params.require(:evenement).permit(:nom, :theme)
    end

    def load_evenement
      @evenement = Evenement.find(params[:id])
    end
end
