class Url < ActiveRecord::Base
  validates 
  
  before_save

  def valid_url?
    if :long_url ~=/\/

  end

  def create_short_url
    'http://' + SecureRandom.hex(2) + '.' + (0..1).map{97.+(rand(26)).chr}.join 
  end

end
