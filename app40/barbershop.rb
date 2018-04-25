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

  fileDataInput = File.open 'users.txt', 'a'
  fileDataInput.write "User: #{@userName}, phone: #{@userPhoneNumber}, date: #{@dateAndTime}\n"
  fileDataInput.close

  erb :message
end

get '/admin' do
  erb :admin
end

post '/admin' do
  @adminPassword = params[:adminPassword]

  if @adminPassword.strip == "zzz"

    fileDataOutput = File.open 'users.txt', 'r'
    linesArr = []
    while (line = fileDataOutput.gets)
      lineData = line.strip
      linesArr << lineData
    end
    @fileData = linesArr
    fileDataOutput.close

    erb :data

  end
end
