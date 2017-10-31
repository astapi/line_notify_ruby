require "line_notify_ruby/version"
require "line_notify_ruby/client"

module LineNotifyRuby
  class << self
    def new(token)
      Client.new(token)
    end
  end
end
