class Irgl < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments

  def self.search(search)
    if search != ""
      Irgl.where('text LIKE(?)', "%#{search}%")
    else
      Irgl.all
    end
  end
end
