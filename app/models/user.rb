# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum genero: [:Hombre, :Mujer, :Otro]

  has_many :comentarios
  has_many :interactions
  belongs_to :comuna
  has_many :primary_cita, class_name: 'Citum', foreign_key: 'user1_id'
  has_many :secondary_cita, class_name: 'Citum', foreign_key: 'user2_id'
  has_and_belongs_to_many :gustos
  has_many :matches
  has_many :valoracions
  # has_many :matches, through: :interactions ##new
  # has_many :invitations

  validates :nombre, presence: true
  validates :edad, presence: true
  validates :telefono, presence: true
  validates :genero, presence: true

  # Avatar Profile Picture
  has_one_attached :avatar

  def nombre
    self[:nombre]
  end

  def edad_numeros
    ((Time.zone.now - self[:edad].to_time) / 1.year.seconds).floor
  end
end
