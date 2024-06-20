Rails.application.routes.draw do
  mount SalesEngine::Engine => "/sales_engine"
end
