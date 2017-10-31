require 'faraday'

module LineNotifyRuby
  class Client
    DEFAULT_ENDPOINT = 'https://notify-api.line.me/api/notify'

    def initialize(token)
      @token = token
    end

    def send_message(message)
      response = connection.post do |req|
        req.headers['Content-Type'] = 'application/x-www-form-urlencoded'
        req.headers['Authorization'] = "Bearer #{token}"
        req.params['message'] = message
      end
    end

    private
      def connection
        @connection ||= Faraday.new(ENV['LINE_NOTIFY_ENDPOINT'] || DEFAULT_ENDPOINT) do |faraday|
          faraday.request  :url_encoded
          faraday.adapter  Faraday.default_adapter
        end
      end

      def token
        @token
      end
  end
end
