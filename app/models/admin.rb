# == Schema Informationencrypted_password
#
# Table name: admins
#
#  id              :bigint           not null, primary key
#  email           :string
#  encrypted_password :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Admin < ApplicationRecord

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

    #validaciones
    validates :email, presence: true
    validates :encrypted_password, presence: true
    validates :password_confirmation, presence: true
    enum role: [:user, :admin ]
end
