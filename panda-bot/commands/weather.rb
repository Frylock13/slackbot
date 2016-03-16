module PandaBot
  module Commands
    class Weather < SlackRubyBot::Commands::Base
      command 'weather' do |client, data, _match|
        response = get_response
        get_desc(response)
      end

      def get_response
        HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Saint+Petersburg&APPID=01e22e4baba3b929e246851ed8564664&units=metric")
      end

      def get_desc(response)
        desc = response['weather'][0]['description']
        temp = response['main']['temp']
        wind = response['wind']['speed']
        "#{desc.capitalize}, #{temp}&deg, #{wind}m/s"
      end
    end
  end
end