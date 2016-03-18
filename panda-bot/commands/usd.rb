module PandaBot
  module Commands
    class Weather < SlackRubyBot::Commands::Base
      require 'goog_currency'

      command 'usd' do |client, data, _match|
        # convert 1 usd to ruble
        rate = GoogCurrency.usd_to_rub(1)

        client.say(channel: data.channel, text: rate)
      end
    end
  end
end