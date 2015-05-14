module Ruboty
  module Handlers
    class HealthCheck < Base
      on /health (?<url>\S+) "(?<ok>[^"]*)" "(?<ng>[^"]*)"/, description: 'health check website', name: :check

      def check(message)
        Ruboty::HealthCheck::Actions::Check.new(message).call
      end
    end
  end
end
