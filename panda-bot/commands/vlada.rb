module PandaBot
  module Commands
    class Vlada < SlackRubyBot::Commands::Base
      command 'vlada' do |client, data, _match|
        client.say(channel: data.channel, text: 'Vlada is awesome girl ^_^')
      end
    end
  end
end