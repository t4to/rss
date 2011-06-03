class HomeController < ApplicationController
  require 'rss'
  def index
	@rss = RSS::Parser.parse(open('http://www.vnews.com.br/cache_rss/rss.xml').read, false)	
  end

end
