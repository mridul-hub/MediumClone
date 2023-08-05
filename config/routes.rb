Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root -> localhost:3000
  # root "articles#index"
  # root -> combination of method + parametr + resource
  # articles -> controller name and home -> function name inside controller
  root 'articles#home'
  post 'create', to: 'articles#create'
  delete 'delete', to: 'articles#delete'
  post 'upload', to: 'uploads#create'
  post 'usercreate', to: 'authors#register'
  post 'userlogin', to: 'authors#login'
  post 'byid', to: 'articles#getbyid'
  get 'articlebylogeduser', to: 'query#allpostedArticles'
  get 'searchbyauthor', to: 'query#articlebyAuthor'
  get 'searchbytopic', to: 'query#articlebyTopic'
  get 'finduser', to: 'query#searchuser'
  post 'createComment', to: 'comments#addComment'
  post 'getArticleComment', to: 'comments#getCommentsofArticle'
end