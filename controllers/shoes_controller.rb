class ShoesController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new {File.join(root, 'views')}

  configure :development do
    register Sinatra::Reloader
  end
  shoes = [
    {
      id: 0,
      style: "Stiletto",
      color: "Black"
    },
    {
      id: 1,
      style: "Sneakers",
      color: "Grey"
    },
    {
      id: 2,
      style: "Combat Boots",
      color: "Maroon"
    },
    {
      id: 3,
      style: "Brogue",
      color: "Brown"
    },
    {
      id: 4,
      style: "Mary Jane",
      color: "Navy Blue"
    }
  ]


  get '/' do
    @shoes = shoes

    erb :'/shoes/index'
  end

  get '/shoes/new' do

  end

  post '/shoes' do

  end

  get '/shoes/:id' do
    id = params[:id].to_i
    pair_of_shoes = shoes[id]
    @id = pair_of_shoes[:id]
    @style = pair_of_shoes[:style]
    @color = pair_of_shoes[:color]
    erb :'/shoes/shows'
  end

  get '/shoes/:id/edit' do

  end

  put '/shoes/:id' do

  end

  delete '/shoes/:id' do

  end

end
