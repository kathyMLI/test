module V1
	class Root < Grape::API
		version 'v1'
		format :json
		prefix :api
		
		get :status do 
			{ status: 'ok!'}
			
		end
		mount V1::CourseApi
		#mount V1::MovementApi
		#mount V1::UserApi
		#mount V1::CurrencyApi

   end
end