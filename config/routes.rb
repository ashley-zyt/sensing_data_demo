Rails.application.routes.draw do

  mount GrapeApi::Posts => '/'
  mount GrapeSwaggerRails::Engine => '/apidoc'
end
