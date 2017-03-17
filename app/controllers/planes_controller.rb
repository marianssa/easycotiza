class PlanesController < InheritedResources::Base
 before_action :authenticate_enterprise!

 def index 
 	@planes= Plane.all
 end

  private

    def plane_params
      params.require(:plane).permit(:nombre, :precio, :meses, :descripcion,:id)
    end
end

