class Api::V1::StudentCoursesController < ApplicationController
    def index
        studentCourses = StudentCourse.all 
        render json: studentCourses, except: [:updated_at, :created_at]

    end 

    def create
        studentCourse = StudentCourse.create(studentCourse_params) 
        render json: studentCourse, except: [:updated_at, :created_at]

    end

    def update
        studentCourse = StudentCourse.find(params[:id])
        studentCourse.update(studentCourse_params)

        render json: studentCourse, expect: [:updated_at, :created_at] 
    end

    def destroy
        studentCourse = StudentCourse.find(params[:id])
        studentCourse.destroy
        render json: studentCourse
    end

    private
    def studentCourse_params 
        params.require(:studentCourse).permit(:student_id, :course_id, :student_name, :course_name)
    end
end
