class Medico < ActiveRecord::Base

	has_many :pedidos
	has_many :receita
	has_many :diagnosticos
	belongs_to :especialidade

	validates_presence_of :login, :senha, :nome, :dataNascimento, :rg, :localizacaoGeo, :cpf, :crm, :telefoneResidencial, :celular, :especialidade_id, :admin
end
