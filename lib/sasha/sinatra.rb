module Sinatra
  class Base
    before do
      headers Sasha::HEADER_NAME => Sasha::Git.current_sha
    end
  end
end
