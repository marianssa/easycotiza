class ProfileController < ApplicationController

	def perfil
		 

	end


	def show
		@enterprises = Enterprise.all
		@categorys = Category.all

	end
end
