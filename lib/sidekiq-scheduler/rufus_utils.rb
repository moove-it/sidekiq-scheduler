require 'hashie'

module SidekiqScheduler
  class RufusUtils

    # Normalizes schedule options to rufust scheduler options
    #
    # @param options [String, [Array]
    #
    # @return [Array]
    #
    # @example
    #   normalize_schedule_options('15m') => ['12d', {}]
    #   normalize_schedule_options(['15m']) => ['12d', {}]
    #   normalize_schedule_options(['15m', first_in: '5m']) => ['12d', { first_in: '5m' }]
    def self.normalize_schedule_options(options)
      schedule, opts = options

      if !opts.is_a?(Hash)
        opts = {}
      end

      opts = Hashie.symbolize_keys(opts)

      return schedule, opts
    end
  end
end

