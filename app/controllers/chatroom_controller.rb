class ChatroomController < ApplicationController
    def index
      @users = User.all  
      @messages = Message.all
    end
    
end
