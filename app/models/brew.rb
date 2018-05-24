class Brew < ApplicationRecord

  def self.strongest
    Brew.where(strength: Brew.maximum('strength'))
  end

end
