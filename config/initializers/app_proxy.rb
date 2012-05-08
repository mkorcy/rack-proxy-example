require 'rack-proxy'

class AppProxy < Rack::Proxy



#  def rewrite_env(env)
#j   request = Rack::Request.new(env)
  #  puts "#{request.path}"

   # if request.path =~ %r{^/api}
  #    env["HTTP_HOST"] = "localhost:8000"
   # else
   #   env["HTTP_HOST"] = "localhost:3000"
   # end
#    return env
 # end
   def rewrite_env(env)
      env["HTTP_HOST"] = "trix.pl"
      env
    end
  #def rewrite_response(triplet)
  ##    puts "C"
  #    status, headers, body = triplet
  #
  #    headers["X-Foo"] = "Bar"
  #
  #    triplet
  #  end
end


