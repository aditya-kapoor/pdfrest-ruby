module Pdfrest
  class Query < Base

    VALID_QUERY_OPTIONS = %i[
      tagged
      image_only
      title
      subject
      author
      producer
      creator
      creation_date
      modified_date
      keywords
      doc_language
      page_count
      contains_annotations
      contains_signature
      pdf_version
      file_size
      filename
      restrict_permissions_set
      contains_xfa
      contains_acroforms
      contains_javascript
      contains_transparency
      contains_embedded_file
      uses_embedded_fonts
      uses_nonembedded_fonts
      pdfa
      requires_password_to_open
    ]

    private

    def request_klass
      Net::HTTP::Post
    end

    def endpoint
      "pdf-info"
    end

    def validate_params
      ensure_only_file_or_id
      ensure_valid_queries
    end

    def request_params
      @_params = { queries: params[:queries] }
      @_params.merge!(id: params[:id]) if params[:id].present?
      @_params.merge!(file: params[:file]) if params[:file].present?

      @_params
    end

    def ensure_only_file_or_id
      if params[:id].present? && params[:file].present?
        raise Pdfrest::InvalidParametersErrors.new('The API only accepts a File or an ID, not both.')
      end
    end

    def ensure_valid_queries
      return if params[:queries].blank?

      supplied_options = params[:queries].split(",")
      valid_options = supplied_options.all? { |option| VALID_QUERY_OPTIONS.include?(option.to_sym) }

      raise Pdfrest::InvalidParametersErrors.new('Invalid query options supplied. Refer to the API docs') unless valid_options
    end
  end
end
