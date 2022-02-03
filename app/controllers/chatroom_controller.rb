class ChatroomController < ApplicationController
    before_action :authenticate_user!
    def index
      @users = User.all  
      @messages = Message.all
      @message = Message.new
    end


end
