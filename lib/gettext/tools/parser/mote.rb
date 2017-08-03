# frozen_string_literal: true

require_relative '../../../../lib/mote'

module GetText
  class MoteParser
    @config = {
      extnames: %w[.mote]
    }

    class << self
      # Sets some preferences to parse Mote files.
      # * config: a Hash of the config. It can takes some values below:
      #   * :extnames: An Array of target files extension. Default is [".mote"].
      def init(config)
        config.each do |k, v|
          @config[k] = v
        end
      end

      def target?(file) # :nodoc:
        @config[:extnames].each do |v|
          return true if File.extname(file) == v
        end
        false
      end

      # Parses Mote script located at `path`.
      #
      # This is a short cut method. It equals to `new(path,
      # options).parse`.
      #
      # @return [Array<POEntry>] Extracted messages
      # @see #initialize and #parse
      def parse(path, options = {})
        parser = new(path, options)
        parser.parse
      end
    end

    # @param path [String] Mote script path to be parsed
    # @param options [Hash]
    def initialize(path, options = {})
      @path = path
      @options = options
    end

    # Extracts messages from @path.
    #
    # @return [Array<POEntry>] Extracted messages
    def parse
      content = IO.read(@path)
      src = Mote.src(content)
      # Force the src encoding back to the original encoding.
      src.force_encoding(content.encoding)
      RubyParser.new(@path, @options).parse_source(src)
    end
  end
end
