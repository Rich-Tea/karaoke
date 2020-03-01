require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class RoomTest < MiniTest::Test

def setup

  @room = Room.new("My Glamorous Karaoke Room", @songs1)
  @guest1 = Guest.new("Rich")
  @guest2 = Guest.new("Ben")
  @guest3 = Guest.new("Alison")
  @guest4 = Guest.new("Martin")

  @guests = [@guest1, @guest2, @guest3, @guest4]


  @song1 = Song.new("Kate Bush", "Cloudbusting")
  @song2 = Song.new("The Smiths", "Half A Person")
  @song3 = Song.new("Manic Street Preachers", "Fragments")
  @song4 = Song.new("Smashing Pumpkins", "1979")

  @songs1 = [@song1, @song2, @song3, @song4]
end

def test_room_name
  assert_equal("My Glamorous Karaoke Room", @room.name())
end

def test_room_songs
  assert_equal(4, @songs1.count())
end

def test_check_in_guests
  assert_equal(4, @guests.count())
end


def test_check_in_multiple_guests
  @guests.check_in_multiple_guests(@guests)
  assert_equal(4, @guests.number_of_guests)
end

def test_check_out_guests
  @guests = []
end

def test_add_song
  @room.add_song(@song3)
  assert_equal()
end

end
