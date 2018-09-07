### API仕様

| URI                           | HTTP   | 説明                                           |
| ------                        | ------ | ------                                         |
| api/items                     | `get`  | アイテムすべてを新しい順に新しい順に取り出す。 |
| api/items/new/:count          | `get`  | 新しい順にcount個取り出す。                    |
| api/items/specials/:id/:count | `get`  | 特集などパックをidで指定してcount個取り出す。  |
| api/items/search/ |  |  |
| api/items/ |  |  |
|  |  |  |
|  |  |  |
|  |  |  |

### トップページ
` items#home `
リクエスト
` api/items/new/5 ` // 新着5件を呼び出す
` api/items/specials/1/5 ` // おすすめ用用(仮)
` api/items/specials/2/5 ` // 特集用(仮)
` api/items/specials/3/5 ` // 柄シャツ用(仮)

### トップページ
` items#home `
リクエスト

### 検索結果
` items#search `
リクエスト

### 新着一覧
` items#news `
リクエスト

### 商品詳細
` items#show `
リクエスト

### スペシャル詳細
` specials#show `
リクエスト

### カートの中身
` users/carts#index `
リクエスト

### 購入画面
` users/carts#check `
リクエスト

### 最終確認
` users/carts#ｃconfirmation `
リクエスト

### 購入後ページ
` users/carts# `
リクエスト



