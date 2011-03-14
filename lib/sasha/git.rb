module Sasha
  class Git
    def self.current_sha
      @current_sha ||= `git rev-parse HEAD`.chomp
    end
  end
end
