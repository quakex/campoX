class User < ApplicationRecord
  validates :username, uniqueness: {case_sensitive: false}, presence:true, format:{with: /\A\w+\z/}
  validates :name, presence: true
  validates :email, uniqueness: {case_sensitive: false}, presence:true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}

  # 此处有点不懂
  def username=(value)
    write_attribute :username, value
    write_attribute :username_lower, value.downcase
  end
end
