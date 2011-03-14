require 'action_controller'

module Sasha
  class Git
    def self.current_sha
      @current_sha ||= `git rev-parse HEAD`.chomp
    end
  end
end

class ActionController::Base
  before_filter :set_git_sha_header

  def set_git_sha_header
    headers['X-Git-SHA'] = Sasha::Git.current_sha
  end
end
