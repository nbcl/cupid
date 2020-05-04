class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum genero: [:Hombre, :Mujer, :Otro]

  has_many :comentarios
  has_many :primary_cita, class_name: 'Citum', foreign_key: 'user_1_id'
  has_many :secondary_cita, class_name: 'Citum', foreign_key: 'user_2_id'
  has_and_belongs_to_many :gustos

  validates :nombre, presence: true
  validates :comuna, presence: true
  validates :edad, presence: true
  validates :telefono, presence: true
  validates :genero, presence: true

  def nombre
    self[:nombre]
  end

  def edadNumeros
    ((Time.zone.now - self[:edad].to_time) / 1.year.seconds).floor
  end
end
