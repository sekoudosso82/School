class Api::V1::ParentStudentsController < ApplicationController

    def index
        parentStudents = ParentStudent.all 
        render json: parentStudents, except: [:updated_at, :created_at]

    end 

    def create
        parentStudent = ParentStudent.create(parentStudent_params) 
        render json: parentStudent, except: [:updated_at, :created_at]

    end

    def update
        parentStudent = ParentStudent.find(params[:id])
        parentStudent.update(parentStudent_params)

        render json: parentStudent, expect: [:updated_at, :created_at] 
    end

    def destroy
        parentStudent = ParentStudent.find(params[:id])
        parentStudent.destroy
        render json: parentStudent
    end

    private
    def parentStudent_params 
        params.require(:grade).permit(:parent_id, :student_id)
    end
end
