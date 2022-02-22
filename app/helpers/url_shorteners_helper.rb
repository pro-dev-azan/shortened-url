module UrlShortenersHelper
  def shortened_url(url)
    "#{ENV['HOST']}/r/#{url}"
  end

  def status_text(url)
    url.expire? ? 'Expired' : 'Active'
  end
end
