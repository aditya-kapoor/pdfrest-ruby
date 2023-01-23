module Pdfrest
  class Show < Base

    private

    def request_klass
      Net::HTTP::Get
    end

    def endpoint
      "resource/#{params[:id]}"
    end
  end
end
