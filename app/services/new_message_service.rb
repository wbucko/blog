class NewMessageService

  def initialize(params)
    @params = params
  end

  def call!
    send_message
  end

  def send_message
    @message = Message.new(@params)
    if @message.save
      email = @params[:email]
      body = @params[:body]

      #ContactMailer.contact_email(email, body).deliver_now
    end
  end
end
