class Pedido < ActiveRecord::Base
	belongs_to :medico
	belongs_to :prontuario

	validates_presence_of :medico_id, :prontuario_id, :data, :nome, :restricao, :recomendacao, :deveAnalizar
end
