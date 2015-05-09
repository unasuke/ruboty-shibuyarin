module Ruboty
  module Handlers
    class Shibuyarin < Base
      on(
        /rin|(?<!星空|遠坂)凛|渋谷凛|しぶりん/i,
        all: true,
        name: 'reaction',
        description: 'Reaction to rin',
      )

      def reaction(message)
        Ruboty::Shibuyarin::Actions::Reaction.new(message).call
      end

    end
  end
end
