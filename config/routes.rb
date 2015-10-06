Rails.application.routes.draw do
  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end

  root 'static_pages#home'
end

