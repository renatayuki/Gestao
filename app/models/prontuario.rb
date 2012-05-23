class Prontuario < ActiveRecord::Base
	has_many :exames
	has_many :pedidos
	has_many :receita
	has_many :diagnosticos
	belongs_to :genero

	validates_presence_of :nome, :dataNascimento, :localizacaoGeo, :cadastroSaude, :habitoVida, :telefoneResidencial, :celular, :email, :genero_id
end
