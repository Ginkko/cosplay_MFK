class Candidate < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates :name,  presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
