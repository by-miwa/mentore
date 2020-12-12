概要
トップページのログインボタンからログインページに遷移していただき、「ゲストログインボタン」からゲストユーザーとしてログインしアプリをご使用いただけます。こちらのサービスで用いている災害の写真は以下のサイトのものを利用しており、実際に起こった災害とは一切関係がありません。
災害写真データベース: http://www.saigaichousa-db-isad.jp/drsdb_photo/photoSearch.do
 レストランデータに紐づいた口コミを投稿することができます。

URL
https://childrest.com ※AWSの料金超過の懸念があるため、一時的に停止します。

なぜこのサービスを作ったか
お子様がいるご家庭の外食はかなりハードで、お店選びは慎重に行わなければいけません。（子供用食器があるか、チャイルドチェアがあるか、お子様ランチがあるか、等） そんなとき、小さい子どもを持つ親目線で書いたレストランの口コミ共有サイトがあれば、このような悩みに寄り添えるのではないかと思い、同じ悩みを持つ人たちに向けて作成しました。

使用技術
Ruby 2.5.3
Ruby on Rails 5.2.2
JavaScript (jQuery)
Bootstrap
AWS (EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)
Docker/docker-compose
CircleCI (CI/CD)
Nginx, Unicorn
RSpec
Git, GitHub
Rubocop
ネットワーク構成図
ネットワーク構成図

ER図
ER図

機能一覧
ユーザーログイン・登録機能（Devise gem）

TwitterによるOAuthログイン機能（Devise gem）

ぐるなびAPIを用いたレストラン検索(Ajaxによる非同期通信)および登録機能

レストラン検索機能(short Ver )

レストランに対する口コミ投稿のCRUD機能

登録レストランの地図表示機能 (GoogleMap API)

口コミに対するコメント登録・削除機能(Ajaxによる非同期通信)

口コミに対するいいね登録・解除機能(Ajaxによる非同期通信)

口コミに対するタグ付け機能(タグに関連する口コミ一覧表示)

口コミに対するカテゴリー機能(カテゴリーに関連する口コミ一覧表示)

コメント、いいねに対する通知機能

登録済レストランおよび口コミの検索機能

画像投稿機能

ユーザーのプロフィール登録・編集機能（ユーザーが投稿した口コミ一覧表示)

開発において意識した事
使用方法がわかりやすいシンプルなUIデザインになるように心がけました。
全体的に柔らかい印象を持つようなビューになるようにしました。
ポートフォリオの内容は誰かの悩みを解決できるサービスにしようと心がけました。(子どもも利用しやすいレストランを探しているファミリーに向けた内容です。)
GitHubによるisuue管理を繰り返すことでチーム開発を見据えて開発を行ってきました。

アプリ作成の目的
私は大学時代に自然災害をはじめとする災害の被害最小化について学んできました。 その中で、災害が起こった後の二次被害（地震後の津波、大雨の後の土砂崩れなど）により命を落としたり、怪我を負ってしまう方が自分の想像よりも多くいることを知ります。 そこで、二次災害が起きる前にその情報を共有できれば被害を減少させられるのではないか、自分にも災害の被害を最小化し、いち早く安全安心な暮らしへ復興するためにできることがあるのではないか？と考え本サービスを作成しました。

機能一覧
ユーザー機能
ユーザー登録・編集・削除
一覧表示
ゲストログイン
プロフィール画像の登録・編集
マイページにて以下の投稿の一覧表示
全ての自分の投稿
フォローしたユーザー
フォロワー
お気に入りに追加した投稿
投稿機能
投稿（画像, タイトル, メッセージ, 都道府県・市区町村, 場所, 位置情報）・編集・削除
一覧表示、詳細表示
地図表示（Google Maps API）
お気に入り追加（いいね数のカウント, 非同期）
検索（キーワード検索・メニュー検索）
場所一覧
コメント機能
投稿（コメント対しコメントが延々とできる, 非同期）
コメントの表示（同一スレッド上にある直前・直後のコメントを表示可能, 非同期）
削除(非同期)
フォロー機能
ユーザーのフォロー・フォロー解除（非同期）
フォロー中のユーザーとフォロワーの一覧表示
その他
レスポンシブ対応
テスト
使用技術
フロント
HTML
CSS
JavaScript
jQuery(Ajax)
bootstrap
バックエンド
PHP 7.2.33
Laravel 6.18.40
サーバー
Nginx
PHP-FPM
DB
MySQL 8.0.19
インフラ・開発環境等
AWS(ACM,EC2,ALB,ECR,ECS,RDS,Route53,VPC,S3)


# テーブル設計

## users テーブル

| Column        | Type    | Options     |
| ----------    | ------- | ----------- |
| email         | string  | null: false |
| password      | string  | null: false |
| name          | string  | null: false |
| profile       | text    | null: false |
| occupation_id | integer | null: false |
| study_id      | integer | null: false |
| age_id        | integer | null: false |
| sns           | string  |             |


### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | string     | null: false |
| text       | text       | null: false |
| concept    | text       | null: false |
| github     | string     | null: false |
| genre_id   | integer    | null: false |
| user       | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- has_many :comments


## books テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| title      | string     | null: false |
| reed       | integer    | null: false |
| understand | text       | null: false |
| text       | text       | null: false |
| action     | text       | null: false |
| link       | text       | null: false |
| user       | references | null: false, foreign_key: true |


### Association

- belongs_to :users

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :prototype


