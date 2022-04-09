Rails.application.routes.draw do

  mount SenseingDataAPI => '/'
  mount GrapeSwaggerRails::Engine => '/apidoc'
end
