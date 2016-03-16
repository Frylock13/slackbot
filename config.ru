$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'dotenv'
Dotenv.load

require 'panda-bot'
require 'web'

Thread.abort_on_exception = true

Thread.new do
  begin
    PandaBot::Bot.run
  rescue Exception => e
    STDERR.puts "ERROR: #{e}"
    STDERR.puts e.backtrace
    raise e
  end
end

run PandaBot::Web