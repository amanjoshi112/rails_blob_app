# class Api::TypeaheadController < ApplicationController
# end

module Api 
    class TypeaheadController < ApplicationController
        def show
            if params[:input]
                @list = User.custom(params[:input])
                render json:  @list , message: "list of match" 
            end
        end
    end
end
