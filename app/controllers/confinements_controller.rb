class ConfinementsController < ApplicationController
  def index
  end

  def home
    @confinments = Confinement.all
  end

  def new
    @confinement = Confinement.new
  end

end
