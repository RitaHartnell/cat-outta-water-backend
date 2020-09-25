class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :commenting_users, foreign_key: :commentor_id, class_name: 'Comment'
    has_many :commentees, through: :commenting_users
    has_many :commented_users, foreign_key: :commentee_id, class_name: 'Comment'
    has_many :commentors, through: :commented_users
end
