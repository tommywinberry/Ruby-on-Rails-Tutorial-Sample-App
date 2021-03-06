# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#  nickname        :string(255)
#  story           :text
#  phone           :string(255)
#  email_public    :boolean
#  phone_public    :boolean
#  testimonial     :text
#

class User < ActiveRecord::Base
  attr_accessible :email, :active, :name, :password, :password_confirmation, :nickname, :story, :phone, :email_public, :phone_public, :testimonial
  has_secure_password
  
  has_one :bio
  has_many :collections, :class_name => "Payment", :foreign_key => "collected_by_user_id"
  has_many :payments, :class_name => "Payment", :foreign_key => "paid_by_user_id"
  has_many :charges
  has_many :transfers, :class_name => "Transfer", :foreign_key => "officer_user_id"
  has_one :office, :class_name => "Office", :foreign_key => "officer_id"
  has_many :purchases

  before_save {email.downcase!}
  before_save :create_remember_token  
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, length: {minimum: 6}
  validates :password_confirmation, presence: true
  
  def officer?
    !self.office.nil?
  end
  
  def executor?
    if(self.office.nil?)
      return false
    end
    if(self.office.title == 'Treasurer' || self.office.title == 'President' || self.office.title == 'Vice President')
      return true
    end
    return false
  end
  
  def current_balance
    @balance = 0
    Charge.find_all_by_user_id(self.id).each do |charge|
      @balance += charge.override_value
    end
    Payment.find_all_by_paid_by_user_id(self.id).each do |payment|
      @balance -= payment.amount_paid
    end
    Payment.find_all_by_collected_by_user_id(self.id).each do |collection|
      @balance += collection.amount_paid
    end
    Purchase.find_all_by_user_id(self.id).each do |purchase|
      @balance -= purchase.purchase_amount
    end
    Transfer.find_all_by_officer_user_id(self.id).each do |transfer|
      @balance -= transfer.value
    end
    return @balance
  end
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
