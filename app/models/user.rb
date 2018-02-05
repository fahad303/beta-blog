class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {minimum: 4, maximum: 12}
    validates :email, presence: true, uniqueness: {case_sensitive: false}, length: {minimum:20, maximum:105}
end
