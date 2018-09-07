Rails.application.routes.draw do

	# ルーティング
	get '/' => 'items#home' #トップページ
	get '/items/news' => 'items#home', as: 'items_news' # 新着一覧表示
	get '/items/:id' => 'items#home', as: 'items_show' # 商品詳細
	get '/items/search' => 'items#home', as: 'items_search' # 検索

	get '/specials/index' => 'items#home' # 今までの特集などを一覧表示
	get '/specials/:id' => 'items#home' # 一つの特集を表示する

	get '/categories/:id' => 'items#home', as: 'category' # 一つの特集を表示する

	# APIルーティング
	get '/api/specials/home' => 'api/items#specials_home', format: 'json' # トップページに表示する特集一覧
	get '/api/specials/home/:id' => 'api/items#specials_home_item', format: 'json' # 特集の中の商品たちを取得
	get '/api/item/news' => 'api/items#news', format: 'json' # 新着順に取得
	get '/api/item/:id' => 'api/items#show', format: 'json' # 商品一つの詳細
	get '/api/specials/:id' => 'api/specials#show', format: 'json' # 特集の中の商品たちを取得
	get '/api/categories/:id' => 'api/categories#show', format: 'json' # 特集の中の商品たちを取得

  devise_for :admins, controllers: {
	  sessions:      'admins/sessions',
	  passwords:     'admins/passwords',
	  registrations: 'admins/registrations'
	}
	devise_for :users, controllers: {
	  sessions:      'users/sessions',
	  passwords:     'users/passwords',
	  registrations: 'users/registrations'
	}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
