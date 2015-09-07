class User < ActiveRecord::Base
  has_secure_password
  before_create :set_token

  has_many :addresses, through: :user_addresses
  has_many :user_addresses

  has_many :proficiency_types, through: :user_proficiency_types
  has_many :user_proficiency_types

  has_many :winner_games, class_name: "Game", foreign_key: "winner_id", dependent: :destroy
  has_many :loser_games, class_name: "Game", foreign_key: "loser_id", dependent: :destroy

  has_many :game_ratings

  has_attached_file :image,  #Or whatever you want to call the image you're uploading.
              :styles => { :medium => "300x300>", :thumb => "100x100>" },
              :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  validates :email, uniqueness: true

  def self.login(email, password)
    user = find_by email: email
    user.login password if user
  end

  def login(password)
    # authenticate method is defined through has_secure_password
    authenticate(password) && set_token && save! && token
  end

  private

  def set_token
    self.token = SecureRandom.hex
  end

end

