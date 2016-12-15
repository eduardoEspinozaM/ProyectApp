require 'carrierwave/orm/activerecord'
class Producto < ActiveRecord::Base
	validates :nombre, :foto, :cantidad, :precio, :descripcion, :categoria_id, presence: {message: "campo obligatorio"}
	belongs_to :categoria
	belongs_to :marca
	has_many :detallepresupuestos
	mount_uploader :foto, ImagenUploader

end
