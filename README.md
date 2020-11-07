# テーブル設計purchase

## users テーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | -----------                  |
| nickname         | string     | null: false                  |
| email            | string     | null: false                  |
| password         | string     | null: false                  |

### Association

- has_many :orders
- has_many :events


## order テーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | -----------                  |
| user             | references | null:false,foreign_key:true  |
| event            | references | null:false,foreign_key:true  |

### Association

- belongs_to :user
- belongs_to :event
- has_one :book

## events テーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | -----------                  |
| concept          | text       | null: false                  |
| place            | text       | null: false                  |
| period           | text       | null: false                  |
| user             | references | null: false,foreign_key:true |

### Association

- belongs_to :user
- has_one :order

## addresses テーブル

| Column           | Type       | Options                      |
| ---------------- | ---------- | -----------                  |
| post_code        | string     | null: false                  |
| prefecture_id    | integer    | null: false                  |
| city             | siring     | null: false                  |
| street           | string     | null: false                  |
| building_name    | string     |                              |
| phone_number     | string     | null: false                  |
| purchase         | references | null: false,foreign_key:true |

### Association

- belongs_to :order
