class RootController < ApplicationController
  def index
    @message = Greeting.all.sample

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render xml: @message }
      format.json { render json: @message }
    end
  end
end
