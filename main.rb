require 'sinatra'

class Main < Sinatra::Base
    get '/' do
        "Hello World"
    end

    # 1dc2fe
    get '/color/:hex' do
        @hex = params['hex']
        erb :color
    end
end

Main.run!