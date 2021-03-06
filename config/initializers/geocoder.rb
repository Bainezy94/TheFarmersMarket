Geocoder.configure(
#   Geocoding options
  timeout: 3,                 # geocoding service timeout (secs)
  lookup: :google,            # name of geocoding service (symbol)
  language: :en,              # ISO-639 language code
  use_https: true,           # use HTTPS for lookup requests? (if supported)
  api_key: "AIzaSyDmwlb9Te36-Xs9_R0Pp1yk-4NT-aAjApY",               # API key for geocoding service
  units: :km,                 # :km for kilometers or :mi for miles
#   ip_lookup: :ipinfo_io,      # name of IP address geocoding service (symbol)
#   http_proxy: nil,            # HTTP proxy server (user:pass@host:port)
#   https_proxy: nil,           # HTTPS proxy server (user:pass@host:port)
#   cache: nil,                 # cache object (must respond to #[], #[]=, and #del)
#   cache_prefix: 'geocoder:',  # prefix (string) to use for all cache keys
#   Exceptions that should not be rescued by default
#   (if you want to implement custom error handling);
#   supports SocketError and Timeout::Error
#   always_raise: [],
#   distances: :linear          # :spherical or :linear
)
