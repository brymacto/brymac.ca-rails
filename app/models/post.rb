class Post < ActiveRecord::Base
  validates :title, :contents, presence: true
  extend FriendlyId
  friendly_id :title, use: :slugged

  def date 
    public_date.strftime('%B %e, %Y')
  end
end
