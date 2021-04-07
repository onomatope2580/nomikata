## テーブル設計

## Users テーブル

| Column                | Type    | Options                   |
| --------------------- | ------- | ------------------------- |
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |
| weight                | integer | null: false               |

### Association

- has_many :plans
- has_many :diaries


## Plans テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| date                  | date       | null: false                    |
| schedule              | text       |                                |
| alcohol_amount_plan   | integer    |                                |
| user                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :diary


## Dairies テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| date            | date       | null: false                    |
| title           | string     |                                |
| comment         | text       |                                |
| alcohol_amount  | integer    |                                |
| user            | references | null: false, foreign_key: true |
| plan            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :plan
- has_one :restaurant
- has_one :drink
- has_one :food


## Restaurants テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     |                                |
| comment               | text       |                                |
| address               | string     |                                |
| diary                 | references | null: false, foreign_key: true |

### Association

- belongs_to :diary


## Drinks テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     |                                |
| comment               | text       |                                |
| diary                 | references | null: false, foreign_key: true |

### Association

- belongs_to :diary


## Foods テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     |                                |
| comment               | text       |                                |
| diary                 | references | null: false, foreign_key: true |

### Association

- belongs_to :diary


## Games テーブル

| Column        | Type       | Options   |
| ------------- | ---------- | --------- |
| title         | string     |           |
| explanation   | text       |           |
| rule          | text       |           |

### Association

- has_many :yamanotesen_themes
- has_many :yes_or_no_themes
- has_many :shiritori_themes


## Yamanotesen_themes テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| theme                 | string     |                                |
| game                  | references | foreign_key: true              |

### Association

- belongs_to :game


## Yes_or_no_themes テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| theme                 | string     |                                |
| game                  | references | foreign_key: true              |

### Association

- belongs_to :game


## Shiritori_themes テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| theme                 | string     |                                |
| game                  | references | foreign_key: true              |

### Association

- belongs_to :game


## Punishment_games テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| punishment            | string     |                                |
| example               | string     |                                |