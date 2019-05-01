class SurveyController < ApplicationController
  def create
    print "hello it was created\n"
    redirect_to "/"
  end
end
