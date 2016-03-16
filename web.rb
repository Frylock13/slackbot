require 'sinatra/base'

module PandaBot
  class Web < Sinatra::Base
    get '/' do
      'Math is good for you.'
    end
  end
end