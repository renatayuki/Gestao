class Receitum < ActiveRecord::Base
	belongs_to :medico
	belongs_to :prontuario

	validates_presence_of :medico_id, :prontuario_id, :data, :medicamento, :dosagem, :frequencia, :duracao, :observacao
end
