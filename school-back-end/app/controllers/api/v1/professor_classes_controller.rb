class Api::V1::ProfessorClassesController < ApplicationController
    def index
        professorClasses = ProfessorClasse.all 
        render json: professorClasses, except: [:updated_at, :created_at]

    end 

    def create
        professorClasse = ProfessorClasse.create(professorClasse_params) 
        render json: professorClasse, except: [:updated_at, :created_at]

    end

    def update
        professorClasse = ProfessorClasse.find(params[:id])
        professorClasse.update(professorClasse_params)

        render json: professorClasse, expect: [:updated_at, :created_at] 
    end

    def destroy
        professorClasse = ProfessorClasse.find(params[:id])
        professorClasse.destroy
        render json: professorClasse
    end

    private
    def professorClasse_params 
        params.require(:professorClasse).permit(:professor_id, :student_id, :professor_name, :class_name)
    end
end
