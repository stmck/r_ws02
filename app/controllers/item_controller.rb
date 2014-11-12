class ItemController < ApplicationController
	def index
		appid
		@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
	end
end
