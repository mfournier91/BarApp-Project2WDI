class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @conversations = Conversation.all
  end
  def create
    # although this scope is cool, not really sure whats happening here, It seems like to me that the conversatiosn can only be one way, and that a new conversation would be have to be created for the other direction. It'd be nice if they could talk to each other through messages.
    if Conversation.between(params[:sender_id],params[:recipient_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    redirect_to conversation_messages_path(@conversation)
  end

  private
 def conversation_params
  params.permit(:sender_id, :recipient_id)
 end

end
