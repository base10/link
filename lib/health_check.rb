# from http://stackoverflow.com/a/41027753/133833
class HealthCheck
  PATH = '/health_check'.freeze
  RESPONSE = 'Hello, world'.freeze

  def initialize(app)
    @app = app
  end

  def call(env)
    # Get out of the way and over to a thread
    dup._call(env)
  end

  def _call(env)
    if env['REQUEST_PATH'] == PATH
      [
        200,
        { 'Content-Type' => 'text/html' },
        [RESPONSE]
      ]
    else
      @app.call(env)
    end
  end
end
