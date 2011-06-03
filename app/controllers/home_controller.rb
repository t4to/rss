class HomeController < ApplicationController
  require 'rss'
  require 'twitter'
  def index
	#Notícias
	@rss = RSS::Parser.parse(open('http://www.vnews.com.br/cache_rss/rss.xml').read, false)	
	
	
	#Twitter
	screen_name = 'sitevnews'

	#Recuperar informações de usuário
	@user = Twitter.user(screen_name)

	#Recuperar timeline
	search = Twitter::Search.new
	@resp = Twitter.user_timeline(screen_name, :count => 20)

	search.clear
  end

end
