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

 -has_many :items
  has_many :purchases

## items テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| categry_id | integer | null: false |
| condition  | string | null: false |
| price      | integer | null: false |
| postsge_id | integer | null: false |
| info       | string | null: false |
| prefectur_id | integer | null: false |
| delivery_id  | integer | null: false |
| user      | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_one :purchase
- belongs_to :shipping

## purchases テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
  belongs_to :item
- has_one :shippings
  

## shippings テーブル

| Column      |    Type    | Options                        |
| -------     | ---------- | ------------------------------ |
| postal_code | string     | null: false                    |
| prefecture_id | intege   | null: false                    |
| city        | string     | null: false                    |
| addresse    | string     | null: false                    |
| buildig     | string     |                                |
| phone_number | string    | null: false                    |
| purchase    | references | null: false, foreign_key: true |

### Association

belongs_to :purchase
