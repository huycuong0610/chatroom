class MessagesController < ApplicationController

  def index
    @room = Room.find_by_id(params[:room_id])
    @messages = @room.messages
    @message = @room.messages.build

    respond_to do |format|
      format.html
      format.json {render json: {messages: @messages} }
      format.js
    end
  end

  def create
    @room = Room.find_by_id(params[:room_id])
    @message = @room.messages.build message_params

    if @message.save
      flash[:success] = "Created message"
    else
      flash[:error] = @message.errors.full_messages.to_sentence
    end
    
    respond_to do |format|
      format.html {redirect_to room_messages_path(@room) }
      format.js 
    end
  end

  private
    def message_params
      params.require(:message).permit(:content, :username)
    end
end