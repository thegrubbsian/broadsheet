Rails.application.routes.draw do

  mount SampleEngine::Engine => "/sample_engine"
end
