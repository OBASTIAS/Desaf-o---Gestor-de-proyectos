class Project < ApplicationRecord
    enum state:[:propuesta, :"en progreso", :terminado]
    validates :name, :description, :state, :initial_date, :finish_date, presence: true
end
