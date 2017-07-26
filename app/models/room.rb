# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
# price_per_night :decimal

# Todos los campos son obligatorios.
# El campo description no debe tener más de 400 caracteres.
# El campo beds debe ser un número (entero).
# El campo guests debe ser un número (entero).

class Room < ActiveRecord::Base
  validates :id, :title, :description, :beds, :guests, :created_at, :updated_at, :image_url, { :presence => true }
  validates :beds, :guests, numericality: { only_integer: true }
  validates :description, {:length => { maximum: 400 }}
end
