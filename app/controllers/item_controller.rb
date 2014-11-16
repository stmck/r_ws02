class ItemController < ApplicationController
	def index
		appid
		@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
		#@q        = Product.search(params[:q])
    	#@products = @q.result(distinct: true)
	end

	def search
	    search_word = URI.decode(params[:q].to_s)
    	@articles = ImageSite.where(content: search_word)
	end
end
