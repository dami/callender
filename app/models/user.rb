require 'digest/md5'
class User < ApplicationRecord
  validates :name, {presence: true}
  validates :password, {presence: true}
  REALM = 'MyDiary'

  def hash(pass)
	  self.password = Digest::MD5.hexdigest(self.name + ":" + REALM + ":" + pass)
    self.save
  end
end
