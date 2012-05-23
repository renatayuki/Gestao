class Diagnostico < ActiveRecord::Base
	belongs_to :prontuario
	belongs_to :medico

	validates_presence_of :descricao, :data, :medico_id, :prontuario_id
end
