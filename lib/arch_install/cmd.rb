require "ostruct"

module ArchInstall
  module Cmd

    module_function :exec

    def exec(cmd)
      res = OpenStruct.new
      begin
        res.out, res.err, res.status = Open3.capture3(cmd)
      rescue => e
        puts CE.fg(:red).get(res.err)
        puts CE.fg(:red).get(e)
        return nil
      end
    end
  end
end
