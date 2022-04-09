class Base < Grape::API
  version 'v1', using: :path
  mount SenseingDataAPI
  add_swagger_documentation(
    :api_version => "api",
    hide_documentation_path: true,
    hide_format: true
  )
end