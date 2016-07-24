class MessagesController < ApplicationController

  def new
    @message = NewMessageForm.new
  end

  def create
    @message = NewMessageForm.new(messages_params)
    if @message.save
      flash[:success] = 'Message has been send'
      redirect_to root_path
    else
      flash[:danger] = 'Something went wrong'
      render :new
    end
  end

  private

  def messages_params
    params.require(:new_message_form).permit(:email, :body)
  end

end
