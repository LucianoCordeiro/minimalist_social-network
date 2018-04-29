class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :likes
end

class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :likes
  belongs_to :user
end

class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
end

class Like < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
end
