class OMDbApi::UrlGenrator::Lookup < OMDbApi::UrlGenrator::Base

  def initialize(search_param)
    @search_param = search_param
  end

  private 

  def get_base_url
    "#{BASE_URL_MOVIES}/#{search_param}&apikey=a5d00900"
  end

  def get_fields
    "#{MOVIE_INFO_FIELDS.join(',')}"
  end

  attr_reader :search_param
end