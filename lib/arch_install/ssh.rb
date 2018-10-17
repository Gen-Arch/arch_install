require "net/ssh"

module ArchInstall
  class SSH
    def initialize(host, user, **opt)
      @session = Net::SSH.start(host, user, **opt)
      @ch
    end

    def channel(&block)
      @session.open_channel do |ch|
        yield ch
        instance_eval(&block)
      end
    end

  end
end
