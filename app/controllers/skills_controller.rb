class SkillsController < ApplicationController
    def new
      @language = Language.find(params[:language_id])
      @skill = @language.skills.new
    end
    def create
      @language = Language.find(params[:language_id])
      @skill = @language.skills.new(skill_params)
      if @skill.save
        redirect_to language_path(@skill.language)
      else
        render :new
      end
    end

  private
    def skill_params
      params.require(:skill).permit(:skill, :project)
    end

  end
