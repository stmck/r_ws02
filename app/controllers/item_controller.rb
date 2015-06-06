class ItemController < ApplicationController
	def index
		appid
		@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
		#binding.pry
		@search_word = URI.decode(params[:q].to_s)
		@new_items = Array.new
		@items.first(80).each do |item| 
			if item['itemName'].include?(@search_word) and !(item['itemName'].include?("ドッグ"))
				@new_items.push (item)
			end 
		end
		#@q        = Product.search(params[:q])
    	#@products = @q.result(distinct: true)
	end

	#def search
	#   search_word = URI.decode(params[:q].to_s)
	#	@items = RakutenWebService::Ichiba::Item.search(:keyword => 'ベジタリアン') 	
	#end
end
