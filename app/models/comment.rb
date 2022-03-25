class Comment < ApplicationRecord
  belongs_to :irgl
  belongs_to :user
end
