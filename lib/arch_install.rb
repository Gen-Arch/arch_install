$: << __dir__

require "logger"

#internal require
require "arch_install/ssh"

module ArchInstall
  VERSION = "0.1.0"

  attr_accessor :logger

  @logger ||= Logger.new(STDOUT)
end
