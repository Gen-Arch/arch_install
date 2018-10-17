$: << __dir__

require "logger"

#internal require
require "arch_install/ssh"

module ArchInstall

  attr_accessor :logger

  @logger ||= Logger.new(STDOUT)
end
