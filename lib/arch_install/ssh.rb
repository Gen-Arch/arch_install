require "net-ssh"

module ArchInstall
  class SSH
    def initilize(host, user, **opt)
      @session = Net::SSH.start(host, user, **opt)
      @ch
    end

    def channel
      yield @session.open_channel
    end

  end
end
