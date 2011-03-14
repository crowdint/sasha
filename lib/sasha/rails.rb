module ActionController
  class Base
    before_filter :set_git_sha_header

    def set_git_sha_header
      warn "No git found for current project" unless Sasha::Git.current_sha
      headers['X-Git-SHA'] = Sasha::Git.current_sha
    end
  end
end
