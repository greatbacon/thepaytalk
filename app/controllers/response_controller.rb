class ResponseController < ApplicationController
  def create
    @survey = Survey.find_by_uuid(params[:uuid])
    @response = Response.new(
      title: params[:title],compensation: params[:compensation],
      experience: params[:experience], survey: @survey
    )
    @response.save

    redirect_to "/survey/#{params[:uuid]}/response"
  end

  def index
    @survey = Survey.find_by_uuid(params[:uuid])
    @responses = Response.where(survey_id: @survey.id)
  end
end
