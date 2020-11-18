class ConfinementsController < ApplicationController
  before_action :set_confinement, only: [:show, :edit, :update, :destroy]

  def home
  end

  def index
    @confinements = Confinement.all
  end

  def user_index
    @user = current_user
    @confinements = current_user.confinements
  end

  def show
  end

  def new
    @confinement = Confinement.new
  end

  def create
    @confinement = Confinement.new(confinement_params)
    @confinement.user = current_user
    if @confinement.save
      redirect_to confinements_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @confinement.update(confinement_params)
      redirect_to @confinement, notice: "Félicitations, votre confinement a été ajouté #{current_user.name}"
    else
      render :edit
    end
  end

  def destroy
    @confinement.destroy
    redirect_to confinements_path
  end

  private

  def set_confinement
    @confinement = Confinement.find(params[:id])
  end

  def confinement_params
    params.require(:confinement).permit(:name, :description, :user_id)
  end
end












