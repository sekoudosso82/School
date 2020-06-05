class Api::V1::ProfessorStudentsController < ApplicationController

    def index
        professorStudents = ProfessorStudent.all 
        render json: professorStudents, except: [:updated_at, :created_at]

    end 

    def create
        professorStudent = ProfessorStudent.create(professorStudent_params) 
        render json: professorStudent, except: [:updated_at, :created_at]

    end

    def update
        professorStudent = ProfessorStudent.find(params[:id])
        professorStudent.update(professorStudent_params)

        render json: professorStudent, expect: [:updated_at, :created_at] 
    end

    def destroy
        professorStudent = ProfessorStudent.find(params[:id])
        professorStudent.destroy
        render json: professorStudent
    end

    private
    def professorStudent_params 
        params.require(:professorStudent).permit(:professor_id, :student_id, :professor_name, :student_name)
    end
end

