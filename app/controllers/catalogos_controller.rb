class CatalogosController < InheritedResources::Base
	def show 
		@categories = Category.find(params[:id])
		@enterprises = Enterprise.where(category_id: @categories.id)
	end

	def index
    @client = current_client
		@categories=Category.all
  		if params[:category_id]
        @categoria=Category.where(:id => params[:category_id]).pluck(:nombre)
    		@enterprises =Enterprise.where(:category_id=> params[:category_id])
    		if @enterprises.empty?
    			flash[:notice]="No existen profesionales pertenecientes a esta categoria"
    			redirect_to categories_path
    		end
  		else
    		 flash[:notice]="No existen profesionales pertenecientes a esta categoria".html_safe
    		 redirect_to categories_path
		end

	end
		
	
  private

    def catalogo_params
      params.require(:catalogo).permit(:id,:category_id, :enterprise_id, :cotizacion_id)
    end
end

