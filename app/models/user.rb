class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 4, maximum: 12}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:20, maximum:105}, format: {with: VALID_EMAIL_REGEX}
end
