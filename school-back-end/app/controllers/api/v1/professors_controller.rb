class Api::V1::ProfessorsController < ApplicationController

    def index
        professors = Professor.all 
        render json: professors, except: [:updated_at, :created_at]

    end 

    def create
        professor = Professor.new(
            username: params[:username],
            password: params[:password]
          )
      
          if professor.save
            token = encode_token(user.id)
            render json: {user: professor, token: token}
          else
            render json: {errors: professor.errors.full_messages}
          end
        
    end

    def update
        professor = Professor.find(params[:id])
        professor.update(professor_params)

        render json: professor, expect: [:updated_at, :created_at] 
    end

    def destroy
        professor = Professor.find(params[:id])
        professor.destroy
        render json: professor
    end

    private
    def professor_params 
        params.permit(:username, :password, :speciality, :email, :phone)
    end
end
