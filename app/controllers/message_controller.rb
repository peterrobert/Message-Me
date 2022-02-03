class MessageController < ApplicationController
    def create
        @message = current_user.messages.new(sanitize_message)
        if @message.save
          flash[:success] = "message sent successfully"
          redirect_to @message
        else
          flash[:notice] = "The text field cant be blank"
          redirect_to  root_path
        end
    end


    private
    def sanitize_message
        params.require(:message).permit(:message)
    end
end
