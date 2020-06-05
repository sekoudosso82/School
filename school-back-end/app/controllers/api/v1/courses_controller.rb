class Api::V1::CoursesController < ApplicationController

    def index
        courses = Course.all 
        render json: courses, except: [:updated_at, :created_at]

    end 

    def create
        course = Course.create(course_params) 
        render json: course, except: [:updated_at, :created_at]

    end

    def update
        course = Course.find(params[:id])
        course.update(course_params)

        render json: course, expect: [:updated_at, :created_at] 
    end

    def destroy
        course = Course.find(params[:id])
        course.destroy
        render json: course
    end

    private
    def course_params 
        params.require(:course).permit(:professor_id, :title, :level)
    end
end
