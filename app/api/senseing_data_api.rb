GrapeDeviseTokenAuth.setup! do |config|
  config.authenticate_all = false
end
class SenseingDataAPI < Grape::API

  format :json
  content_type :json, 'application/json;charset=utf-8'

  namespace 'login' do
    params do
      requires :email,      type: String
      requires :password,   type: String
    end
    get 'login' do
        # user = User.find_by(email: params[:email].to_s)
        if params[:email] == "test@test.com" && params[:password] = "123qweasd"
        # if user && user.authenticate(params[:password])
          {message:"success!",app_key:"3ed9bd69e31d6c3f800f87bc489aab86e5631d9b" }
        else
          {message:"password error!",app_key:"" }
        end
    end
  end

  namespace 'data' do
    params do
      optional :data_type,      type: Integer
      optional :num_string_one, type: String
      requires :app_key,        type:String
    end
    get 'get_data' do
      if params[:app_key] != '3ed9bd69e31d6c3f800f87bc489aab86e5631d9b'
        {message:"app_key error!",count: 0, result: [] }
      else
        opts = {}
        opts[:num_string_one] = params[:num_string_one].to_s if params[:num_string_one].present?
        opts[:data_type] = params[:data_type].to_i if params[:data_type].present?
        results = SenseingData.where(opts)
        {message:"success!",count: results.count, result:results }
      end
    end
  end

  add_swagger_documentation(
    base_path: "",
    hide_documentation_path: true,
    hide_format: true,
  )


end