# MEN TORE（メントレ）:bust_in_silhouette::speech_balloon:

# 「駆け出しエンジニア同士で繋がろう！」  GolfOurは練習内容を投稿して共有したり記録できるゴルフ初心者向けサービスです

ログイン方法
ユーザーログイン：ヘッダー右上のゲストユーザーログイン
管理者ログイン：フッター右下の、ロゴマークよりゲスト管理者ログイン

🌐 URL
https://doboku-post.site
 「右上のログインボタン」 → 「かんたんログイン」 で新規登録なしでログインできます。
　email:　a@a
　password:　111111

イメージ図
スクリーンショット 2020-10-28 0 27 14


# :mag_right: なぜこのサービスを作ったか:question:
-[]お子様がいるご家庭の外食はかなりハードで、お店選びは慎重に行わなければいけません。（子供用食器があるか、チャイルドチェアがあるか、お子様ランチがあるか、等） そんなとき、小さい子-[x]どもを持つ親目線で書いたレストランの口コミ共有サイトがあれば、このような悩みに寄り添えるのではないかと思い、同じ悩みを持つ人たちに向けて作成しました。

# :man: ペルソナ
## 性別：　　　男女どちらも
###### 年齢：　　　20代の社会人2〜5年目(ある程度の経済力があり、高価なゴルフ道具を購入できる年齢)
居住地：　　地方・郊外(練習場・ゴルフ場が豊富で環境が整っている地域)
ゴルフ歴：　 練習回数0~10回程度でまだコースデビューしていない人


# :bulb: アプリを利用するメリット
【海外旅行がしたい人にとって】

日本語が通じない海外でも 安心して旅行できる
比較的リーズナブルな価格で利用できる
多岐に渡るサービスに対応している
自分からプランを提案しガイドを募ることができる
【海外在住者にとって】

スキマ時間や休日を使って、ちょっとしたお小遣いを稼げる
日本人と接する機会を増やせる

:date: 14日間

# :books: 工夫した点
「直感的なわかりやすさ・使いやすさ」 を重視し、一つ一つの機能やデザインに細部までこだわりました。
ユーザーがアプリを利用する際の不安要素を少なくできるよう、ツアーゲストとツアーキャスト両方のレビュー機能を実装しました。
黄色とオレンジという明るい色を基調とし、トップページに画像を多く取り入れることで、「新しい旅や出会いのワクワク感」 が感じられるようにしました。
スマホでも快適に利用できるよう、戻るボタンやマイページに下タブを表示するなど、スマホの使い方に合ったレスポンシブデザインを実装しました。

工夫した部分
N+1問題を解消し、処理時間を大幅に短縮させたこと
トップページの読み込みに 3秒以上かかっており、ユーザーが利用した時に非常に不便だと感じていました。

原因を調べるためにターミナルでログを確認したところ、N+1問題が発生していることが分かりました。 対策方法を考え、bulletというN+1問題を検知するgemがあることを知り、こちらを使用して問題のソースコードを特定しました。

Railsのincludesメソッドを使用し、不要なSQL文を発行しないようにして、JOINで一括に取得するように修正しました。

結果的に、今までは読み込みに3秒かかっていたものが、1秒に短縮することができました。

特に見てほしい点
開発の過程をQiitaに投稿していたこと。

各機能の実装方法や解説をまとめていました。
実装して終わりではなく、ドキュメント化することで 記憶ではなく記録に残ります。 このようにドキュメンテーション力を活かして知識を積み上げていけることが私の強みです。
また、誰かに教えることを想定して記事を書くには自分の言葉で噛み砕く必要があり、その結果より深く理解することができます。
Rails フォロー機能をajaxで実装
Rails DM機能とajaxでメッセージの送受信を実装する方法
Rails いいね機能をajaxで実装
Rails コメント機能のajax通信
CircleCIを導入してCI/CDパイプラインを構築

CircleCIを導入しただけで終わりではなく、最大限活用するために静的解析ツールRubocopの導入と、RSpecを使用してテストコードを100件以上作成しました。この結果、何らかの問題があった場合はすぐに発覚することで、アプリの品質が担保されていることを実感しています。
CircleCIが実行されるとcapistranoが走り自動デプロイされることで、デプロイコマンドを打ち忘れるというヒューマンエラーを仕組み化で解決しました。こういった人の作業が自動化されることにプログラミングの面白さや可能性を感じます。
苦労したこと
寄付機能の実装
ネット上に参考文献が一切なく、自力で実装していく必要がありました。

なので、今まで得た知識や経験の応用をきかせて、どうすれば実装できるか考え込んで設計・開発・テストを行いました。

具体的な方法は、下記になります。

1．必要な機能や要件をまとめて明確にする。
2．データ処理の流れを考えて、適切なDBの設計を行う。
3．使用できそうなメソッドを公式ドキュメントで調べて、実装する。
4．想定通りの動作することを確認するために、テストコードを書く。
この経験から、誰も解いたことがない問題に対して、自ら問題を定義して解決するための試行錯誤をすることができ、やり遂げる経験を得ました。

AWSへデプロイ時のUnicornの設定。
Rails側の記述忘れでアプリケーションサーバのUnicornが起動できない、またはパスの指定が間違っており「Unicorn.sockファイルはありません」というエラーに悩まされました。

解決方法としては、しっかりとエラーログを確認して原因を推察し、解決する仮説を立てて一つずつ検証していきます。

例えば、パスの指定が間違っているなら、ディレクトリを確認することはもちろん、他のアプリを参考にしたり、関連する箇所がないかを探していきました。

原因が推察できなければ、第一に公式ドキュメントを読み、その後Qiitaや質問サイトなどで情報を収集し、原因を特定していきました。

そして、エラーを解決したら、原因と解決方法をまとめてQiitaやTwitterに投稿してアウトプットとドキュメント化しました。 そうすることで、似たエラーに遭遇した際は、「あの時はどうやって解決したか」をすぐに思い出すことができて、問題解決までに必要な時間を短縮することができます。

実際に投稿した記事：【Unicorn】master failed to start, check stderr log for detailsの解決法

細かいなミスで発生したエラーでも原因が特定できないと、解決にかなり時間がかかってしまうことを実感して、エラーログをしっかりと確認することを徹底しています。


# :computer::sparkles:使用技術・環境
【フロントエンド】
・Bootstrap4
・HTML(Slim,CSS(Sass)
・JavaScript

【バックエンド】
・Ruby 2.5.1
・Ruby on Rails 5.2.4

【データベース】
・MySQL2

【開発環境】
・Docker, docker-compose

【本番環境】
・AWS(VPC/EC2/ALB/RDS/Route53)
・Nginx、Unicorn
・Capistrano
・CircleCI/CD

【その他使用技術】
・Git,GitHub
・RSpec
・Rubocop


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

# :triangular_flag_on_post: 課題、今後実装したい機能
より使いやすいアプリケーションを目指し、UI/UXを改善する
新機能の実装

- 機能一覧
- ユーザー機能
- ユーザー登録・編集・削除
- 一覧表示
- Thomas Jefferson
ゲストログイン
1. プロフィール画像の登録・編集
2. マイページにて以下の投稿の一覧表示
3. 全ての自分の投稿

1. James Madison
2. James Monroe
3. John Quincy Adams

1. 最初のリストアイテム
   - 最初の入れ子になったリストアイテム
     - 2 番目の入れ子になったリストアイテム
     
- [x] Finish my changes
- [ ] Push my commits to GitHub
- [ ] Open a pull request
:EMOJICODE:

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

About me
現在、22歳で某独立行政法人に勤務しております。バックエンドエンジニアを目指しポートフォリオの作成・改善、アウトプットを行っております。

Twitter
Qiita
学習記録


