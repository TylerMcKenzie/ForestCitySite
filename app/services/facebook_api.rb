class FacebookApi
	def self.get_homepage_details
		access = "EAACEdEose0cBAMhuzwd5qES1QgYiYqguJnOVt1t2mFwfiLuii6YqfWqjgpVI2BM2lDDuegZBAVDbF39ZAtD3JfZBgfBTEaB33YDj36GztCaiefC1F6BugWRoSrUaG71VM5D0tn5fS3ZAkqzZBv4F4P2LHLuwinoSuBFIcY10ODwZDZD"
		request = HTTP.get("https://graph.facebook.com/v2.6/1100870719927530/posts?access_token=#{access}&fields=message,likes,link,created_time,full_picture,comments{from,message}").body
		response =JSON.parse(request)['data']
	end
end