
require 'sinatra'
require 'tilt/erubis'  #4tob ne pizdel pri zapuske
#erb - template engine dvizhok shablonov podderzhivaemiy sinatra (polniy spisok na saite sinatra)
get '/' do
  erb :index     #nazvanie nashego fila erb
end

get '/contacts' do   #eshe odna stranica
  @title = 'contacts'
  @message = 'phone: 332233'
  erb :message
end

get '/faq' do
  @title = 'faq'
  @message = 'under construction'
  erb :message
end

get "/something" do
  underConstruction
end

def underConstruction
  @title = 'under construction'
  @message = 'this page is under construction'

end

post '/' do
  @login = params[:name]
  @password = params[:password]

  if @login == "admin" && @password == "secret"
    erb :welcome
  elsif @login == "admin" && @password == "admin"
    @message = "Nice try, cool hacker!"
    erb :index
  else
    @message = "Access denied"
    erb :index
    #erb :denied
  end

end
