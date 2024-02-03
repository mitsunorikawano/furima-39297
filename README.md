# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false, unique: true |
| email              | string | null: false |
| password           | string | null: false |
| first-name         | text | null: false |
| last-name          | text | null: false |
| first-name-kana    | text | null: false |
| last-name-kana     | text | null: false |
| birth-date         | text | null: false |

### Association

- has_many :items


## items テーブル

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| name      | string | null: false |
| categry   | string | null: false |
| condition | string | null: false |
| price     | string | null: false |
| postsge   | string | null: false |
| image     | string | null: false |
| info      | string | null: false |
| prefectur | string | null: false |
| delivery  | string | null: false |
| comment   | text | null: false |
| user      | references | null: false, foreign_key: true |
| purchase  | references | null: false, foreign_key: true |
| shipping  | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :purchase
- belongs_to :shipping

## purchases テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| date   | string     | null: false
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- has_many :items
- has_many :shipping

## shipping テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       | null: false                    |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |
| purchase| references | null: false, foreign_key: true |

### Association

- has_many :items
- belongs_to :purchases