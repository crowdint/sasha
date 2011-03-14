module Sasha
  autoload :Git, 'sasha/git'
  HEADER_NAME = 'X-Git-Sha'
end

require 'sasha/rails' if defined?(ActionController)
require 'sasha/sinatra' if defined?(Sinatra)
