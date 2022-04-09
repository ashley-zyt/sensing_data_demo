class SenseingDataAPI < Grape::API
  auth :grape_devise_token_auth, resource_class: :user

    format :json

    helpers GrapeDeviseTokenAuth::AuthHelpers
    get 'get_data' do
      # authenticate_user!
      present SenseingData.page(params[:page]).per(20)
    end
end