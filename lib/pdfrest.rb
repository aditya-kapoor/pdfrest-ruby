# frozen_string_literal: true

require_relative "pdfrest/version"
require_relative "pdfrest/config"
require_relative "pdfrest/base"

module Pdfrest
  class Error < StandardError; end

  class << self
    attr_accessor :configuration

    def config
      self.configuration ||= Config.new
      yield(configuration)
    end
  end
end
