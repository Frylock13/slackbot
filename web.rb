require 'sinatra/base'
require 'httparty'

module PandaBot
  class Web < Sinatra::Base
    get '/' do
      'Welcome, human.'
    end
  end
end