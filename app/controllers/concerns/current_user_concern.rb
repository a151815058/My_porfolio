module CurrentUserConcern
	extend ActiveSupport::Concern 


  ##override current_user 

  ## super -> It  meaning don't change anything
  def current_user
  	## 如果current_user目前有人的話，則回傳super（也就是原本的）
  	## 否則垂 OpenStruct.new(name: "wendyyao", first_name:"wendy" ,last_name: "yao", email: "a151815058@gmail.com")
  	super || guest_user
  end

  def guest_user
  	##OpenStruct.new(name: "Guest User", first_name:"Guest" ,last_name: "User ", email: "a151815058@gmail.com")

  	#見一個新的model去繼承user，然後直接用呼叫函數的方式，就不用使用OpenStruct
  	guest = GuestUser.new
  	guest.name ="Guest User"
  	guest.first_name = "Guest"
  	guest.last_name = "User"
  	guest.email ="a151815058@gmail.com"
  	guest
  end 


end
 