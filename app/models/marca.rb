class Marca < ActiveRecord::Base
	validates :nombre, presence: {message: "campo obligatorio"}
	has_many :productos
end