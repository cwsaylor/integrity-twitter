require 'rubygems'
require 'integrity'
require 'twitter'

module Integrity
  class Notifier
    class Twitter < Notifier::Base
      
      def self.to_haml
        File.read File.dirname(__FILE__) / "config.haml"
      end

      def deliver!
        @tweet = Twitter::Base.new(@config["email"], @config["pass"])
        @tweet.post(short_message)
      end
      
    end
  end
end