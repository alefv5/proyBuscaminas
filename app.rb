require 'sinatra'
require './lib/buscamina'
buscaminasTablero=Buscamina.new
get '/' do
    #@@namePlayer = params[:namePlayer].to_s
    @casillas=buscaminasTablero.getTablero()
    erb :home
end  
post '/getNombre' do

     @namePlayer=params[:namePlayer]
     
     @casillas=buscaminasTablero.getTablero()
         
     erb :tablero
end
