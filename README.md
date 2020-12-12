# MEN TORE（メントレ）:bust_in_silhouette::speech_balloon:

「駆け出しエンジニア同士で繋がろう！」  <br>Mentoreはエンジニア転職を目指す仲間を増やせるマッチングアプリです！<br><br>
**ログイン方法**

🌐 URL
https://doboku-post.site  <br>「右上のログインボタン」 → 「ゲストログイン（閲覧用）」 で新規登録なしでログインできます。<br>
email: guest@com<br>  password: guest123<br>
![代替テキスト](https://vps15-d.kuku.lu/files/20201212-0748_b88f34fcccf502e00a8bbe6172b3721b.png)

# :mag_right: なぜこのサービスを作ったか:question:
私がエンジニアとしての転職活動をしている中で、初学者の立場として以下のようなサービスがあればと感じていました。

- **「初学者のポートフォリオとGitHubが気になる」**
- **「エンジニア初学者同士で気軽に交流をしたい」**
- **「SNS等でお互いのことを知った上で、安心・安全に繋がりたい！」**

また、コロナ禍でエンジニア転職を目指す求人者が急増したことで
「自分と同じようなサービスを求めている人がいるのではないか」 と感じました。

そんな中、同じくエンジニア転職を目指す知り合いからも「ポートフォリオのテーマが思い浮かばない。ヒントをもらいたい。。。」


上記の経験を踏まえ、 「駆け出しエンジニア同士の交流と、
慣れない面接練習をするきっかけ作り」
があれば上記の課題を解決できるのではないかと思い、本アプリを制作しました。

# :bulb: アプリを利用するメリット

### :man: ペルソナ
**性別・年齢： ２０代男性の駆け出しエンジニア**<br>
**お悩み：　　初学者同士で情報交換したい**

**【駆け出しエンジニアにとって】**

- 初学者のポートフォリオとGitHubを見れる
- お互いに緊張感が持てる、面接練習したい相手を募集できる
- 最近、読んだ技術書やビジネス書の感想を投稿できる！
- 転職サポートプラン（有料）では専任エージェントによるサポートを受けられます！

**【企業にとって】**

- 優秀な駆け出しエンジニアを広告費を出さずにTwitterでスカウトできる
- 新任面接官の模擬面接の場になる

# :books: 工夫した点
「直感的なわかりやすさ・使いやすさ」 を重視し、寒色を基調としシンプルで、尚かつアイコンを多く取り入れることにこだわりました。<br>
また、一つ一つの機能やデザインに細部まで手を抜かず「シンプルで使いやすい」 と感じてもらえるように意識しました。

工夫した部分
N+1問題を解消し、処理時間を大幅に短縮させたこと
トップページの読み込みに 3秒以上かかっており、ユーザーが利用した時に非常に不便だと感じていました。

原因を調べるためにターミナルでログを確認したところ、N+1問題が発生していることが分かりました。 対策方法を考え、bulletというN+1問題を検知するgemがあることを知り、こちらを使用して問題のソースコードを特定しました。

Railsのincludesメソッドを使用し、不要なSQL文を発行しないようにして、JOINで一括に取得するように修正しました。

結果的に、今までは読み込みに3秒かかっていたものが、1秒に短縮することができました。

# :eyes: 特に見てほしい点
開発の過程をQiitaに投稿していたこと。

各機能の実装方法や解説をまとめていました。
実装して終わりではなく、ドキュメント化することで 記憶ではなく記録に残ります。 このようにドキュメンテーション力を活かして知識を積み上げていけることが私の強みです。
また、誰かに教えることを想定して記事を書くには自分の言葉で噛み砕く必要があり、その結果より深く理解することができます。


AWSへデプロイ時のUnicornの設定<br>
Rails側の記述忘れでアプリケーションサーバのUnicornが起動できない、またはパスの指定が間違っており「Unicorn.sockファイルはありません」というエラーに悩まされました。

解決方法としては、しっかりとエラーログを確認して原因を推察し、解決する仮説を立てて一つずつ検証していきます。

例えば、パスの指定が間違っているなら、ディレクトリを確認することはもちろん、他のアプリを参考にしたり、関連する箇所がないかを探していきました。

原因が推察できなければ、第一に公式ドキュメントを読み、その後Qiitaや質問サイトなどで情報を収集し、原因を特定していきました。

そして、エラーを解決したら、原因と解決方法をまとめてQiitaやTwitterに投稿してアウトプットとドキュメント化しました。 そうすることで、似たエラーに遭遇した際は、「あの時はどうやって解決したか」をすぐに思い出すことができて、問題解決までに必要な時間を短縮することができます。

実際に投稿した記事：【Unicorn】master failed to start, check stderr log for detailsの解決法

細かいなミスで発生したエラーでも原因が特定できないと、解決にかなり時間がかかってしまうことを実感して、エラーログをしっかりと確認することを徹底しています。


# :computer::sparkles:使用技術・環境
### 【フロントエンド】
・HTML<br>
・CSS<br>
・JavaScript<br>

### 【バックエンド】
・Ruby 2.6.5<br>
・Ruby on Rails 6.0.3.4<br>

### 【データベース】
・MySQL2<br>

### 【開発環境】
・

### 【本番環境】
・AWS(S3/EC2)<br>
・Nginx、Unicorn<br>
・Capistrano<br>

### 【その他使用技術】
・Git,GitHub<br>
・RSpec<br>
・Rubocop<br>


# 機能一覧

ユーザーのプロフィール登録・編集機能（Devise gem）

- ユーザー機能
- ユーザー登録・編集・削除
- 一覧表示
- Thomas Jefferson
ゲストログイン
1. プロフィール画像の登録・編集
2. マイページにて以下の投稿の一覧表示
3. 全ての自分の投稿

アプリ投稿機能・編集・削除（画像, タイトル, メッセージ, 都道府県・市区町村, 場所, 位置情報）
Bookシェア投稿機能・編集・削除（画像, タイトル, メッセージ, 都道府県・市区町村, 場所, 位置情報）
     
一覧表示、詳細表示

コメント機能
コメントの表示


テストコード（Rspec）
1. 
2. 
3. 

# :triangular_flag_on_post: 課題、今後実装したい機能
より使いやすいアプリケーションを目指し、UI/UXを改善する
新機能の実装

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
| sns           | string  | null: false |


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
| action     | text       |             |
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

# :high_brightness:About me
現在、23歳でエンジニア転職を目指しております。<br>バックエンドエンジニアを目指しポートフォリオの作成・改善、アウトプットを行っております。

- **[Twitter](https://twitter.com/by_miwa30)**
- **[Qiita](https://qiita.com/by-miwa30)**
- **[面接練習の記録](https://tech-camp.in/note/)**


