module Pdfrest
  module Convert
    class Tif < Pdfrest::Base
      private

      def request_klass
        Net::HTTP::Post
      end

      def endpoint
        "tif"
      end
    end
  end
end
