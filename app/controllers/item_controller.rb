class ItemController < ApplicationController
	def index
		appid
		@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
		#binding.pry
		@search_word = URI.decode(params[:q].to_s)
		#@q        = Product.search(params[:q])
    	#@products = @q.result(distinct: true)
	end

	#def search
	#   search_word = URI.decode(params[:q].to_s)
	#	@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
	#end
end
