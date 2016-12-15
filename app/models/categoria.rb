class Categoria < ActiveRecord::Base
	validates :nombre, presence: {message: "campo obligatorio"} #si necesitamos validar mas campos se separa con comas 
	has_many :productos
end
