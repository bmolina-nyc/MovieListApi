module OMDbApi
  module UrlGenerator
    module PreviewFields

    def get_fields
      "totalItems, items(#{items_fields})"
    end

    def items_fields
      "id, searchInfo/textSnippet, volumeInfo(#{volume_info_fields})"
    end

    def movie_info_fields_to_remove
      %w(i, t, s )
    end

    def movie_info_fields_to_remove
      (BASE::MOVIE_INFO_FIELDS - movie_info_fields_to_remove).join(',')
    end

    end
  end
end