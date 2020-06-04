class Api::V1::ParentsController < ApplicationController


    def index
        # Parent = Parent.all.sort_by { |user| user.username } 
        parents = Parent.all 
        render json: parents, except: [:updated_at, :created_at]

    end 

    def create
        parent = Parent.new(
            username: params[:username],
            password: params[:password]
          )
      
          if parent.save
            token = encode_token(user.id)
            render json: {user: parent, token: token}
          else
            render json: {errors: parent.errors.full_messages}
          end
        
    end

    def update
        parent = Parent.find(params[:id])
        parent.update(parent_params)

        render json: parent, expect: [:updated_at, :created_at] 
    end

    def destroy
        parent = Parent.find(params[:id])
        parent.destroy
        render json: parent
    end

    private
    def parent_params 
        params.permit(:username, :password, :address, :email, :phone)
    end
end
