class BuscaController < ApplicationController
	def search
		@prontuarios = Prontuario.where('nome LIKE ?', "%#{search}%")
		redirect_to :controller => 'welcome', :action => index
	end
end
