#app/controllers/proxy_controller.rb
class ProxyController < ApplicationController
  def proxify
     @result   = AppProxy.new.call(request.env)
     render :status => @result[0], :content_type => @result[1]["content-type"], :layout => false, :text => @result[2]
  end
end
