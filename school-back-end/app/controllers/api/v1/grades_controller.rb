class Api::V1::GradesController < ApplicationController

    def index
        grades = Grade.all 
        render json: grades, except: [:updated_at, :created_at]

    end 

    def create
        grade = Grade.create(grade_params) 
        render json: grade, except: [:updated_at, :created_at]

    end

    def update
        grade = Grade.find(params[:id])
        grade.update(grade_params)

        render json: grade, expect: [:updated_at, :created_at] 
    end

    def destroy
        grade = Grade.find(params[:id])
        grade.destroy
        render json: grade
    end

    private
    def grade_params 
        params.require(:grade).permit(:title)
    end
end
