class MessagesController < ApplicationController
  def index
    puts "Requested Format: #{request.format}"
    @message = Message.all.sample

    respond_to do |format|
      format.xml { render xml: @message }
      format.json { render json: @message }
    end
  end
end
