# frozen_string_literal: true

module Facter
  module Sles
    class NetworkingFqdn
      FACT_NAME = 'networking.fqdn'
      ALIASES = 'fqdn'

      def call_the_resolver
        fact_value = Facter::Resolvers::Hostname.resolve(:fqdn)
        [ResolvedFact.new(FACT_NAME, fact_value), ResolvedFact.new(ALIASES, fact_value, :legacy)]
      end
    end
  end
end