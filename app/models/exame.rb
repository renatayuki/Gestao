class Exame < ActiveRecord::Base
	belongs_to :prontuario

	validates_presence_of :prontuario_id, :resultado, :nome, :dataRealizacao, :dataPronto, :status
end
