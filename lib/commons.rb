require 'commons/configuration'

module Commons
 extend Configuration
  class << self
    # Alias for Commons::Client.new
    #
    # @return [Commons::Client]
    def new(options={})
      Commons::Client.new(options)
    end

    # Delegate to Commons::Client.new
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private=false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end
  end
end
