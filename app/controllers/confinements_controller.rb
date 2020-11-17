class ConfinementsController < ApplicationController
  def home
  end
  
  def index
    @confinements = Confinement.all
  end

  def new
    @confinement = Confinement.new
  end
end
