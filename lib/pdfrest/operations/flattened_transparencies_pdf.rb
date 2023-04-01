module Pdfrest
  class FlattenedTransparenciesPdf < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "flattened-transparencies-pdf"
    end
  end
end
