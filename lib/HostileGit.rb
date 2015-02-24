require "HostileGit/version"
require "git"

module HostileGit

  class Hostility
    attr_accessor :timeout, :last_commit, :git

    def initialize(timer = 10)
      self.timeout = timer
      self.last_commit = timer
      self.git = Git.init
    end

    def commited?
      self.git.log.since("#{self.timeout} minutes ago").count > 0
    end

    def reset!
      self.git.reset_hard("HEAD")
    end

  end

end
