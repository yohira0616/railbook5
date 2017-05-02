Rails.application.routes.draw do
  resources :fan_comments
  resources :reviews
  resources :authors
  resources :users
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index', to: 'hello#index'
  get 'hello/view'
  get 'hello/list'

  # 第4章 view開発
  get 'view/keyword'
  post 'keyword/search'
  get 'view/form_tag'
  post 'view/create'
  get 'view/form_for'
  get 'view/field'
  get 'view/html5'
  get 'view/select'
  get 'view/col_select'
  get 'view/group_select'
  get 'view/dat_select'
  get 'view/col_radio'
  get 'view/fields'
  get 'view/link'
  get 'view/urlfor'
  get 'view/new'
  get 'members/login'
  get 'view/mailto'
  get 'view/image_tag'
  get 'view/video'
  get 'view/audio'
  get 'view/path'
  get 'view/helper'
  get 'view/helper2'
  get 'view/adopt'
  # 第5章 Model開発
  get 'record/find'
  get 'record/find_by'
  get 'record/where'
  post 'record/ph1'
  get 'record/keyword'
  get 'record/not'
  get 'record/where_or'
  get 'record/order'
  get 'record/reorder'
  get 'record/select'
  get 'record/last'
  get 'record/groupby'
  get 'record/havingby'
  get 'record/where2'
  get 'record/unscope'
  get 'record/unscope2'
  get 'record/none'
  get 'record/pluck'
  get 'record/exists'
  get 'record/scope'
  get 'record/def_scope'
  get 'record/count'

  resources :books
end
