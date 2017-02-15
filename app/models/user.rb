class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :records

  validates_presence_of :name
  validates_presence_of :email
  before_save :assign_role, on: :create

  def assign_role
    self.role_id = Role.find_by(name: "Reader").id if self.role.nil?
  end

  def admin?
    self.role && self.role.name == "Admin"
  end

  def editor?
    self.role && self.role.name == "Editor"
  end

  def reader?
    self.role && self.role.name == "Reader"
  end

end
