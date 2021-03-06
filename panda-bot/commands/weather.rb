module PandaBot
  module Commands
    class Weather < SlackRubyBot::Commands::Base
      command 'weather' do |client, data, _match|
        response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=Saint+Petersburg&APPID=#{ENV['WEATHER_API_KEY']}&units=metric")
        desc = response['weather'][0]['description']
        temp = response['main']['temp']
        wind = response['wind']['speed']
        result = "#{desc.capitalize}, #{temp}C, #{wind}m/s"

        client.say(channel: data.channel, text: result)
      end
    end
  end
end