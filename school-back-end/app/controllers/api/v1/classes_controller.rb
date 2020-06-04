class Api::V1::ClassesController < ApplicationController

    def index
        classes = Classe.all 
        render json: classes, except: [:updated_at, :created_at]

    end 

    def create
        classe = Classe.create(classe_params)
       
    end

    def update
        classe = Classe.find(params[:id])
        classe.update(classe_params)

        render json: classe, expect: [:updated_at, :created_at] 
    end

    def destroy
        classe = Classe.find(params[:id])
        classe.destroy
        render json: classe
    end

    private
    def classe_params 
        params.permit(:title)
    end
end
