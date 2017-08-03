# frozen_string_literal: true

require 'fast_gettext'

Object.send(:include, FastGettext::Translation)
locales_dir = File.join(File.dirname(__FILE__), '..', 'locales')
FastGettext.add_text_domain('forgedtofightio', path: locales_dir, type: :po)
