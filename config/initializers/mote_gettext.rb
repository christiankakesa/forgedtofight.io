# frozen_string_literal: true

require 'mote'

class Mote
  def self.src(template, vars = [])
    terms = template.split(PATTERN)

    code = String.new("Proc.new do |params, __o| params ||= {}; __o ||= '';")

    vars.each do |var|
      code << "%s = params[%p];" % [var, var]
    end

    while (term = terms.shift)
      case term
      when "<?" then code << "#{terms.shift}\n"
      when "%"  then code << "#{terms.shift}\n"
      when "{{" then code << "__o << (#{terms.shift}).to_s\n"
      else           code << "__o << #{term.dump}\n"
      end
    end

    code << "__o; end"
  end
end

module GetText
  class MoteParser
    @config = {
      extnames: %w[.mote]
    }

    class << self
      # Sets some preferences to parse ERB files.
      # * config: a Hash of the config. It can takes some values below:
      #   * :extnames: An Array of target files extension. Default is [".rhtml"].
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

      # Parses eRuby script located at `path`.
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

    # @param path [String] eRuby script path to be parsed
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

      # Force the src encoding back to the encoding in magic comment
      # or original content.
      encoding = detect_encoding(src) || content.encoding
      src.force_encoding(encoding)

      RubyParser.new(@path, @options).parse_source(src)
    end

    def detect_encoding(mote_source)
      if /\A#coding:(.*)\n/ =~ mote_source
        $1
      end
    end
  end
end

require 'gettext/tools/xgettext'
GetText::Tools::XGetText.add_parser(GetText::MoteParser)
