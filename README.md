# README

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false, unique: true|
| encrypted_password | string | null: false |
| first_name         | string | null: false |
| last_name          | string | null: false |
| first_name_kana    | string | null: false |
| last_name_kana     | string | null: false |
| birth_date         | date   | null: false |

### Association

- has_many :items


## items テーブル

| Column    | Type   | Options     |
| --------  | ------ | ----------- |
| name      | string | null: false |
| categry   | string | null: false |
| condition | string | null: false |
| price     | integer | null: false |
| postsge   | string | null: false |
| info      | string | null: false |
| prefectur | string | null: false |
| delivery  | string | null: false |
| comment   | text   | null: false |
| user      | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :purchase
- belongs_to :shipping

## purchases テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- has_many :items
- has_many :shippings

## shippings テーブル

| Column      |    Type    | Options                        |
| -------     | ---------- | ------------------------------ |
| postal_code | string     | null: false                    |
| prefecture  | string     | null: false                    |
| city        | string     | null: false                    |
| addresse    | string     | null: false                    |
| buildig     | string     | null: false                    |
| phone_number | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |
| purchase    | references | null: false, foreign_key: true |

### Association

- has_many :items
- belongs_to :purchase