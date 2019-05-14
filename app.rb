require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @shipone = params[:pirate][:ships][0]
      @shipone = @shipone.values
      @shiptwo = params[:pirate][:ships][1]
      @shiptwo = @shiptwo.values
      #@shipone = Ship.new(params[:pirate][:ship][:name], params[:pirate][:shipone][:type], params[:pirate][:shipone][:booty]),
      #@shiptwo = Ship.new(params[:pirate][:shiptwo][:name], params[:pirate][:shiptwo][:type], params[:pirate][:shiptwo][:booty])
      erb :'pirates/show'
    end
  end
end
