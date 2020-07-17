class Api::V1::AuthController < ApplicationController
    #   skip_before_action :authorized, only: [ :login]

    def login
      student = Student.find_by(username: params[:username])
    
        if student && student.authenticate(params[:password])
          token = encode_token(student.id)
          render json: {student: student, token:token}
        else
          render json: {errors: "Warnig case sensitive, try again!"}
        end
      end
    
      def auto_login
          # user = User.find_by(id: request.headers['Authorization'])
          if session_user
              render json: session_user
            else 
              render json: {errors: "no matched user!"}
            end
        
      end
end
