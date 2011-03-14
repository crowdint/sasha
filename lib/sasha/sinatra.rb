module Sinatra
  class Base
    before do
      headers "X-Git-SHA" => Sasha::Git.current_sha
    end
  end
end
