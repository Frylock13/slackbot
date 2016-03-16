module PandaBot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'how is vlada?' do |client, data, _match|
        client.say(channel: data.channel, text: 'Vlada is awesome girl ^_^')
      end
    end
  end
end