require 'sinatra'
require 'tilt/erubis'

get '/' do
  erb :index
end

post '/' do
  @userName = params[:userName]
  @userPhoneNumber = params[:userPhoneNumber]
  @dateAndTime = params[:dateAndTime]

  @title = "Hello #{@userName}, you are welcome!!"
  @message = "Your phone number #{@userPhoneNumber} is correct?
              We are waitnig for you at #{@dateAndTime}"

  erb :message

end
