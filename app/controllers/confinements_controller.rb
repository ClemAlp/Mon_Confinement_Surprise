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

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

