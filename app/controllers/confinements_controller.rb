class ConfinementsController < ApplicationController
  def home
  end

  def index
    @confinements = Confinement.all
  end

  def show
    @confinement = Confinement.find(params[:id])
  end

  def new
    @confinement = Confinement.new
  end

  def create
    @confinement = Confinement.new(confinement_params)
    @confinement.user = current_user
    if @confinement.save!
      redirect_to confinements_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def confinement_params
    params.require(:confinement).permit(:name, :description)
  end
end
