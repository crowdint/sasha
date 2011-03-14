module Sasha
  autoload :Git, 'sasha/git'
end

require 'sasha/rails' if defined?(ActionController)
require 'sasha/sinatra' if defined?(Sinatra)
