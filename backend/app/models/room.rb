class Room < ApplicationRecord
  has_many :users

  def self.generate_room_code
    code = (0...4).map{(65+rand(26)).chr}.join
    if Room.all.map{|room| room.code}.include? code
      code = generate_room_code
    end
    return code
  end

  def self.find_by_room_code(code)
    return Room.all.find{|room| room.code == code}
  end

end
