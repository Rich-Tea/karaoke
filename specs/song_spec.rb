require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../song.rb")

class SongTest < MiniTest::Test

def setup
  @song = Song.new("Beyonce", "Halo")
end

def test_artist_has_name
  assert_equal("Beyonce", @song.artist())
end

def test_song_has_title
  assert_equal("Halo", @song.title())
end

end
