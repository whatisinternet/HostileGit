require "HostileGit/version"
require "git"
require "listen"
require "date"

module HostileGit

  class Hostility
    attr_accessor :timeout, :initial_time, :git

    def initialize(timer = 10)
      self.timeout = timer
      self.initial_time = Time.new.inspect
      self.git = Git.init
    end

    def commited?
      self.git.log.since("#{self.timeout} minutes ago").count > 0
    end

    def reset!
      self.git.reset_hard("HEAD")
    end

    def check_and_reset
      if !commited?
        reset!
      end
    end

    def start_being_hostile
      listener = Listen.to(Dir.pwd) do |modified, added, removed|
        if (self.initial_time - Time.new.inspect) < (timeout * 3600)
          check_and_reset
        end
      end
      listener.start # not blocking
      sleep
    end


  end

end
