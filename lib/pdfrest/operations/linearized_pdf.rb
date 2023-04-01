module Pdfrest
  class LinearizedPdf < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "linearized-pdf"
    end
  end
end
