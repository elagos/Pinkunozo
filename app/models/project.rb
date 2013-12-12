class Project < ActiveRecord::Base
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects

  def add_user!(user)
    user_projects.create!(user_id: user.id)
  end
end
