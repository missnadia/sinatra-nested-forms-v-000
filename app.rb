require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each { |details| Ship.new(details) }

      @ships = Ship.all
    end
  end
end
