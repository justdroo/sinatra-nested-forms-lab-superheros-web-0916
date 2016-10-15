require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
    end

    post '/teams' do
      @team = Team.new(params)

      @member_1 = Hero.new(params)
      @member_2 = Hero.new(params)
      @member_3 = Hero.new(params)
      # binding.pry
      erb :super_hero 
    end

end
