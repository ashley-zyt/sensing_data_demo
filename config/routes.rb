Rails.application.routes.draw do

  mount SenseingData => '/'
  mount GrapeSwaggerRails::Engine => '/apidoc'
end
