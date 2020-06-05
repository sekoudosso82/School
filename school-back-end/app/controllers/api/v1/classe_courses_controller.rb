class Api::V1::ClasseCoursesController < ApplicationController
    def index
        classeCourses = ClasseCourse.all 
        render json: classeCourses, except: [:updated_at, :created_at]

    end 

    def create
        classeCourse = ClasseCourse.create(classeCourse_params) 
        render json: classeCourse, except: [:updated_at, :created_at]

    end

    def update
        classeCourse = ClasseCourse.find(params[:id])
        classeCourse.update(classeCourse_params)

        render json: classeCourse, expect: [:updated_at, :created_at] 
    end

    def destroy
        classeCourse = ClasseCourse.find(params[:id])
        classeCourse.destroy
        render json: classeCourse
    end

    private
    def classeCourse_params 
        params.require(:classeCourse).permit(:classe_id, :course_id, :classe_name, :course_name)
    end
end
