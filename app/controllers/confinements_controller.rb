class ConfinementsController < ApplicationController
  before_action :set_confinement, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @confinements = Confinement.all
  end

  def show
  end

  def new
    @confinement = Confinement.new
  end

  def create
  end

  def edit
  end

  def update
    if @confinement.update(confinement_params)
      redirect_to @confinement, notice: `Félicitations, votre confinement a été ajouté #{user.name}`
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_confinement
    @confinement = Confinement.find(params[:id])
  end

  def confinement_params
    params.require(:confinement).permit(:name, :description)
  end
end
