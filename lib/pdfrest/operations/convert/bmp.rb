module Pdfrest
  module Convert
    class Bmp < Pdfrest::Base
      private

      def request_klass
        Net::HTTP::Post
      end

      def endpoint
        "bmp"
      end

      def validate_params
      end
    end
  end
end
