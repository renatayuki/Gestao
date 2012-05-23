class WelcomeController < ApplicationController
  

  def index
  	if params[:search] != nil
  		@prontuarios = Prontuario.where('nome LIKE ?', "%"+params[:search]+"%")
  	else
  		@prontuarios = Prontuario.all
  	end
  end


end
