module Pdfrest
  module Convert
    class Png < Pdfrest::Base

      private

      def request_klass
        Net::HTTP::Post
      end

      def endpoint
        "png"
      end

      def validate_params
      end
    end
  end
end
