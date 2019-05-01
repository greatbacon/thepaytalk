class SurveyController < ApplicationController
  def create
    print "we are creating survey"
    @survey = Survey.new(name: params[:name],uuid: params[:survey_id])
    @survey.save

    redirect_to @survey
  end

  def show
    @survey = Survey.find_by_uuid(params[:uuid])
  end

end
