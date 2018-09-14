Rails.application.routes.draw do
  resources :topics

  post "/topics/:id/vote", to: "topics#vote"
  delete "/topics/:id/downvote", to: "topics#downvote"
end
