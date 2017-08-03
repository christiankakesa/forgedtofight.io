# frozen_string_literal: true

require 'mote'

class Mote
  def self.src(template, vars = [])
    terms = template.split(PATTERN)
    code = String.new("Proc.new do |params, __o| params ||= {}; __o ||= '';")
    vars.each do |var|
      code << format('%s = params[%p];', var, var)
    end
    while (term = terms.shift)
      code << case term
              when '<?' then "#{terms.shift}\n"
              when '%'  then "#{terms.shift}\n"
              when '{{' then "__o << (#{terms.shift}).to_s\n"
              else "__o << #{term.dump}\n"
              end
    end
    code << '__o; end'
  end
end
