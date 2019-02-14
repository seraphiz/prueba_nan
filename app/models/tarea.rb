class Tarea < ApplicationRecord
    has_many :concluidos
    has_many :users, through: :concluidos


   
end
