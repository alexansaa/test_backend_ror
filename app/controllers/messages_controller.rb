class MessagesController < ApplicationController
  before_action :allow_cross_origin_requests

  def index
    @message = Message.all.order('RANDOM()').first

    respond_to do |format|
      format.json { render json: { message: @message&.content } }
    end
  end

  private

  def allow_cross_origin_requests
    headers['Access-Control-Allow-Origin'] = 'http://localhost:3001' # Adjust to your React frontend's URL
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Allow-Credentials'] = 'true'
  end
end
