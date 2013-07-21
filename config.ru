use Rack::Static, :urls => %w(/images /css /js)

run lambda { |env|
  html_file = env['REQUEST_PATH'].split(/\//)[1]
  if html_file
    html_file = 'index' unless File.exists?(html_file + '.html')
  else
    html_file = 'index'
  end
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open(html_file + '.html')
  ]
}
