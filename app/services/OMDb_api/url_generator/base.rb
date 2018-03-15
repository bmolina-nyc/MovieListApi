class MovieListApi::UrlGenerator::Base


    def call_movies
      "#{get_base_url_movies}#{get_params_hash.to_query}"
    end

    def call_movie
        "#{get_base_url_movie}#{get_params_hash.to_query}"
    end

    def get_params_hash
      { key: API_KEY, fields: get_fields}
    end


    def get_base_url_movies
      BASE_URL_MOVIES
    end

    def get_base_url_movies
        BASE_URL_MOVIE
    end
  


    #constants



    BASE_URL_MOVIES = 'http://www.omdbapi.com/?s='
    BASE_URL_MOVIE = 'http://www.omdbapi.com/?i='
    API_KEY = 'a5d00900'
    INFO_FIELDS = %w(
          i t s
        )
end


# movies `http://www.omdbapi.com/?s=movieName&apikey=a5d00900`
# movie `http://www.omdbapi.com/?i=imdbID&apikey=a5d00900`
# search params - s (for search) i (for imdbID) t(for title)