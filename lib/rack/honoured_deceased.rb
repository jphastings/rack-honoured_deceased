module Rack
  class HonouredDeceased
    HEADER_KEY = 'X-Clacks-Overhead'.freeze

    # @param [#call] app A rack application
    # @param [Array<String>,String] honoured_deceased A name or array of names of names you'd like in the clacks overhead
    def initialize(app, honoured_deceased = [])
      @app = app
      names = [*honoured_deceased].compact
      @overhead = names.map { |name| "GNU #{name}" }.freeze if names.any?
    end

    def call(env)
      result = @app.call(env)
      result[1][HEADER_KEY] = @overhead.shuffle if @overhead
      result
    end
  end
end
