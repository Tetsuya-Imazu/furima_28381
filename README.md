# README

# テーブル設計

## users テーブル

| Column                | Type   | Options     |
| --------------------- | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| confirmation_password | string | null: false |
| family_name           | string | null: false |
| first_name            | string | null: false |
| family_name_kana      | string | null: false |
| first_name_kana       | string | null: false |
| birth_day             | date   | null: false |

### Association

- has_many :items
- has_one :transaction

## items テーブル

| Column        | Type    | Options     |
| ------------- | --------| ----------- |
| name          | string  | null: false |
| description   | text    | null: false |
| category_id   | integer | null: false |
| condition_id  | integer | null: false |
| cost_id       | integer | null: false |
| prefecture_id | integer | null: false |
| shipping_id   | integer | null: false |
| price         | string  | null: false |

### Association

- belongs_to :user
- has_one :shipping
- has_one :transaction

 ## shipping(配送先) テーブル

| Column        | Type    | Options     |
| ------------- | --------| ----------- |
| post_code     | string  | null: false |
| prefecture_id | integer | null: false |
| city          | string  | null: false |
| address       | string  | null: false |
| building      | string  |             |
| phone_number  | string  | null: false |
| item_id       | integer | foreign_key: true |

### Association

- belongs_to :item

## transaction テーブル

| Column      | Type    | Options     |
| ----------- | --------| ----------- |
| user_id     | integer | foreign_key: true |
| item_id     | integer | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item