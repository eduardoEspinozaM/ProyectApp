class Login < ActiveRecord::Base
	validates :usuario, :contrasena, presence: {message: "campo obligatorio"}
end
