require 'open-uri'
require 'json'

module Ruboty
  module HealthCheck
    module Actions
      class Check
        attr_reader :message

        def initialize(message)
          @message = message
        end

        def call
          begin
            if content['result'] == 'OK'
              message.reply ok_message
            else
              message.reply ng_message
            end
          rescue => e
            message.reply e.message
            message.reply e.backtrace.join("\n")
          end
        end

        private

        def url
          message[:url]
        end

        def content
          JSON.parse open(url).read
        end

        def ok_message
          message[:ok] || 'OK'
        end

        def ng_message
          message[:ng] || 'NG'
        end
      end
    end
  end
end
