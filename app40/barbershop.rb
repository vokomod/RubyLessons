require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @userName = params[:userName]
  @userPhoneNumber = params[:userPhoneNumber]
  @dateAndTime = params[:dateAndTime]

  erb :message

  @title = "Hello #{@userName}, you are welcome!!"
  @message = "Your phone number #{@userPhoneNumber} is correct?
              We are waitnig for you at #{@dateAndTime}"

end
