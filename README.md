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
| birth_year            | string | null: false |
| birth_month           | string | null: false |
| birth_day             | string | null: false |

### Association

- has_many :items
- has_one :card
- has_one :shipping

## items テーブル

| Column        | Type    | Options     |
| ------------- | --------| ----------- |
| name          | string  | null: false |
| description   | text    | null: false |
| category_id   | string  | null: false |
| condition_id  | integer | null: false |
| cost_id       | integer | null: false |
| prefecture_id | integer | null: false |
| shipping_id   | integer | null: false |
| price         | string  | null: false |

### Association

- belongs_to :user

## card テーブル

| Column        | Type    | Options     |
| ------------- | --------| ----------- |
| number        | string  | null: false |
| exp_month     | string  | null: false |
| exp_year      | string  | null: false |
| cvc           | string  | null: false |

### Association

- belongs_to :user

 ## shipping(配送先) テーブル

| Column        | Type    | Options     |
| ------------- | --------| ----------- |
| post_code     | string  | null: false |
| prefecture_id | integer | null: false |
| city          | string  | null: false |
| address       | string  | null: false |
| building      | string  |             |
| phone_number  | string  | null: false |

### Association

- belongs_to :user