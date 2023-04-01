module Pdfrest
  class PdfWithAddedImage < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "pdf-with-added-image"
    end
  end
end
