class TwittController < ApplicationController
  require 'twitter'
  def index
	screen_name = 'sitevnews'

	#Recuperar informa��es de usu�rio
	@user = Twitter.user(screen_name)

	#Recuperar timeline
	search = Twitter::Search.new
	@resp = Twitter.user_timeline(screen_name, :count => 20)

	search.clear
  end

end
