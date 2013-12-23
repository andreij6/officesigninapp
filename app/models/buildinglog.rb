class Buildinglog < ActiveRecord::Base
  attr_accessible :hour, :minutes, :state, :ampm
  
  validates :hour, presence: true
  validates :minutes, presence: true
  validates :state, presence: true
  validates :ampm, presence: true
  
  def time
    "#{hour}:#{sprintf '%02d', minutes} #{ampm.downcase}"
  end
end
