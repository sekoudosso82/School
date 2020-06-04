class Api::V1::StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students, except: [:updated_at, :created_at]

    end 

    def create
        student = Student.create(
            student_params
          )
      
          if student
            token = encode_token(user.id)
            render json: {user: student, token: token}
          else
            render json: {errors: student.errors.full_messages}
          end
        
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)

        render json: student, expect: [:updated_at, :created_at] 
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        render json: student
    end

    private
    def student_params 
        # params.permit(:classe_id, :username, :password, :firstname, :lastname, :email, :phone)
        params.require(:student).permit(:classe_id, :username, :password, :firstname, :lastname, :email, :phone)

    end
end
