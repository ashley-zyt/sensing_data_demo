GrapeDeviseTokenAuth.setup! do |config|
  config.authenticate_all = false
end
class SenseingDataAPI < Grape::API
  auth :grape_devise_token_auth, resource_class: :user

    format :json

    helpers GrapeDeviseTokenAuth::AuthHelpers
    get 'get_data' do
      authenticate_user!
      present SenseingData.all
    end
end