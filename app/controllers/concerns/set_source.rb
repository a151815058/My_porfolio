module SetSource
	extend ActiveSupport::Concern 

	included do 
		before_action :set_source ##表示會在所有的controller前面執行
	end 

	def set_source
  		session[:source] = params[:q] if params[:q] #如果參數q存在，則把參數q傳到session的source裡
  	end
end

  

