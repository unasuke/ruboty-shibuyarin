module Ruboty
  module Shibuyarin
    module Actions
      class Reaction < Ruboty::Actions::Base
        def call
          message.reply('呼んだ？')
        end
      end
    end
  end
end
