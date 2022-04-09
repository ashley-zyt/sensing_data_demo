GrapeDeviseTokenAuth.setup! do |config|
  config.authenticate_all = false
end
class SenseingDataAPI < Grape::API
  auth :grape_devise_token_auth, resource_class: :user

    format :json

    helpers GrapeDeviseTokenAuth::AuthHelpers
    get 'get_data' do
      # authenticate_user!
      # page = params[:page].to_i || 1
      # per = params[:per].to_i || 20
      # present SenseingData.all
       response 200 do
          data :SenseingData.all
        end
    end
end