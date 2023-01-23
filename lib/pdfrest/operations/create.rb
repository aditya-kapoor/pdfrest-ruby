module Pdfrest
  class Create < Base

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "pdf"
    end

    def request_params
      # TODO...
      {}
    end

    def validate_params
      ensure_only_file_or_id_or_url
    end

    def ensure_only_file_or_id_or_url
      if params[:id].present? && params[:file].present? && params[:url].present?
        raise Pdfrest::InvalidParametersErrors.new('The API only accepts a File, a URL or an ID, not all.')
      end
    end
  end
end
