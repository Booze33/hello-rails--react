def GreetingsController < ApplicationController
  def index
    @message = Greeting.all.sample

    respond_to do |format|
      format.xml { render xml: @message }
      format.json { render json: @message }
    end
  end
end
