class ConfinementsController < ApplicationController
  def index
  end

  def home
    @confinements = Confinement.all
  end

  def new
    @confinement = Confinement.new
  end

end
