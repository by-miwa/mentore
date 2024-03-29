graph TD;
A–>B;
A–>C;
B–>D;
C–>D;

```mermaid
// この中にMermaid記法
```


# MEN TORE（メントレ）:bust_in_silhouette::speech_balloon:

「駆け出しエンジニア同士で繋がろう！」  <br>Mentoreはエンジニア転職を目指す仲間を増やせるマッチングアプリです！<br>

**ログイン方法**

### 🌐 URL http://3.140.60.122/ <br> 「右上のゲストログイン（閲覧用）」 でログインできます。<br>
**email: guest@com**<br>  **password: guest123**<br>
![テキスト](https://vps15-d.kuku.lu/files/20201212-1010_30d1e6304ea134e0d89a4c934f7a9f05.png)

# :mag_right: なぜこのサービスを作ったのか:question:
私がエンジニアとしての転職活動をしている中で、初学者の立場として以下のようなサービスがあればと感じていました。

- **「初学者のポートフォリオとGitHubが気になる」**
- **「エンジニア初学者同士で気軽に交流をしたい」**
- **「SNS等でお互いのことを知った上で、安心・安全に繋がりたい！」**

また、コロナ禍でエンジニア転職を目指す求人者が急増したことで
「自分と同じようなサービスを求めている人がいるのではないか」 と感じました。

そんな中、同じくエンジニア転職を目指す知り合いからも「ポートフォリオのテーマが思い浮かばない。ヒントをもらいたい...」

上記の経験を踏まえ、 「駆け出しエンジニア同士の交流と、
慣れない面接練習をするきっかけ作り」
があれば上記の課題を解決できるのではないかと思い、本アプリを制作しました。

# :bulb: アプリを利用するメリット

### :man: ペルソナ
**対象：  ２０代の駆け出しエンジニア**<br>
**お悩み： 初学者同士で情報交換したい**

**【駆け出しエンジニアにとって】**

- 初学者のポートフォリオとGitHubを見れる
- お互いに緊張感が持てる、面接練習したい相手を募集できる
- 最近、読んだ技術書やビジネス書の感想を投稿できる！
- 転職サポートプラン（有料）では専任エージェントによるサポートを受けられます！

**【企業にとって】**

- 優秀な駆け出しエンジニアを広告費を出さずにTwitterでスカウトできる
- 新任面接官の模擬面接の場になる

![テキスト](https://file10-d.kuku.lu/files/20201212-1019_d0055727074e4909ea14f15e9b80a0c7.png)

# :books: 工夫した点
「直感的なわかりやすさ・使いやすさ」 を重視し、寒色を基調としシンプルで、尚かつアイコンを多く取り入れることにこだわりました。
また、一つ一つの機能やデザインに細部まで手を抜かず「シンプルで使いやすい」 と感じてもらえるように意識しました。


# :eyes: 特に見てほしい点

各機能の実装方法や解説をまとめていました。

実装して終わりではなく、アウトプットすることで記憶ではなく記録に残ります。 

このようにアウトプット力を活かして知識を積み上げていけることが私の強みです。

また、誰かに教えることを想定して記事を書くには自分の言葉で噛み砕く必要があり、その結果より深く理解することができます。


**AWSアプリの修正から自動デプロイまでの流れ**

AWS自動デプロイまでの処理が終わり、ブラウザからElastic IPでアクセスしたところ「We’re sorry , but ~」というエラーに悩まされました。

例えば、環境変数の指定の仕方に誤りがないか、インスタンスを再起動したりなど探していきました。

解決方法としては、しっかりとエラーログを確認して原因を推察し、解決する仮説を立てて一つずつ検証していきました。

原因が推察できなければ、Qiitaや質問サイトなどで情報を収集し、原因を特定していきました。

今回の原因は、masterでのcommit→pushのし忘れという初歩的なものでした。

細かいなミスで発生したエラーでも原因が特定できないと、解決にかなり時間がかかってしまうことを実感して、自分用マニュアルとしてQiitaにまとめました。


# :computer::sparkles:使用技術・環境
### 【フロントエンド】
・HTML<br>
・CSS<br>
・JavaScript<br>

### 【バックエンド】
・Ruby 2.6.5<br>
・Ruby on Rails 6.0.3.4<br>

### 【データベース】
・MySQL5.6.47<br>

### 【本番環境】
・AWS(S3/EC2)<br>
・Nginx、Unicorn<br>

### 【その他使用技術】
・Git,GitHub<br>
・RSpec<br>
・Rubocop<br>
・Capistrano<br>

![テキスト](https://file3-d.kuku.lu/files/20201213-0255_519b1e8b0a3e30e5694e63618d9502ad.png)


# :pencil: 機能一覧

### ユーザー機能
- ユーザー登録・編集（deviseのgemを使用)
- ゲストログイン
- マイページにて以下の投稿の一覧表示
  - 自己紹介
  - 前職(Active Hash)
  - 学習進捗(Active Hash)
  - 年齢(Active Hash)
  - Twitter(バリデーション)
  - 自分のアプリ投稿
  - 自分のBook投稿
  
  ![テキスト](https://file10-d.kuku.lu/files/20201212-1019_63408e4544b1ea35c6047a46f735ca49.png)

### アプリ投稿機能
- アプリの名称
- 紹介文
- コンセプト
- アプリのURL
- GitHub(バリデーション)
- ジャンル(Active Hash)
- ジャンル（Active Storage）

![テキスト](https://file10-d.kuku.lu/files/20201212-1019_afce4a4e43e520cbead1be4012f56cf8.png)

### 面接カレンダー機能
- 日付選択
- 名前・時間の入力ボタン
- カレンダー保存
- カレンダー一覧表示

![テキスト](https://file10-d.kuku.lu/files/20201212-1019_809b032a71ed868e565beef96b162211.png)

### ユーザーリスト機能
- お名前
- 年齢
- Twitter（リンク指定）

![テキスト](https://vps13-d.kuku.lu/files/20201212-1031_b976a6ec2d121e3e8733ca7d2ac66b70.png)

### Bookシェア機能
- 本のタイトル
- 本の種類
- 学んだ単語
- 本の感想
- 行動プラン
- KindleのURL(バリデーション)
- Kindleの画像（Active Storage）

![テキスト](https://file10-d.kuku.lu/files/20201212-1019_b9d29a95fcf0736ba68772fdf5836115.png)

### 転職サポートプラン
![テキスト](https://file10-d.kuku.lu/files/20201212-1019_80ca26b1326eddc9c4135b80bd61a336.png)


### テストコード（Rspec）
1. user_spec.rb
2. prototype_spec.rb
3. book_spec.rb
![テキスト](https://file4-d.kuku.lu/files/20201212-1026_6fdbc48513d93f4a212f398115af15f9.png)


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

![テキスト](https://file7-d.kuku.lu/files/20201212-1011_ab2fc05cfe3b4ffc690888185bac0bc3.png)


# :high_brightness:About me
現在、23歳でエンジニア転職を目指しております。<br>バックエンドエンジニアを目指しポートフォリオの作成・改善、アウトプットを行っております。

- **[Twitter](https://twitter.com/by_miwa30)**
