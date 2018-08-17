# frozen_string_literal: true

require 'fast_gettext'
require 'gettext/mote_parser'

# Fix the im-config.po generated filename
ENV['TEXTDOMAIN'] = 'forgedtofightio' unless 'forgedtofightio'.eql?(ENV['TEXTDOMAIN'])

Object.send(:include, FastGettext::Translation)
locales_dir = File.join(File.dirname(__FILE__), '..', 'locales')
FastGettext.add_text_domain(ENV['TEXTDOMAIN'], path: locales_dir, type: :po)
