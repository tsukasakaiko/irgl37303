# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

DB設計
usersテーブル

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| name               | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |

has_many : irregulars



irregularsテーブル

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| users              | string              | null: false, foreign_key: true|
| spot               | string              | null: false               |
| ship_no            | string              | null: false               |
| status             | string              | null: false               |
| remarks            | string              | null: false               |

belongs_to : users