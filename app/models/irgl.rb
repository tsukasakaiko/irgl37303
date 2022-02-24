class Irgl < ApplicationRecord
  validates :spot, presence: true
  validates :ship_no, presence: true
  validates :status, presence: true
  validates :remarks, presence: true
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
