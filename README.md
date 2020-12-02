
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
| user       | references | null: false, foreign_key: true |


### Association

- belongs_to :users
- has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |

### Association

- belongs_to :users
- belongs_to :prototype


