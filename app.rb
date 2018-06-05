require './environment'

module FormsLab
  class App < Sinatra::Base

    #code other routes/actions here
    get '/' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all
      params[:pirate][:ships].each do |individual_ship|
          Ship.new(individual_ship)
      end

      erb :"pirates/show"
    end

  end
end
