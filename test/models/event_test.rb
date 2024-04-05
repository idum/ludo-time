require "test_helper"

class EventTest < ActiveSupport::TestCase
  test " title and location should be assigned by default" do
    anevent = Event.new
    assert anevent.save
    assert_equal( "No-named", anevent.title)
    assert_equal( "", anevent.location)
  end

  test " date should be assigned by default " do
    anevent = Event.new
    assert anevent.save
    assert_equal(anevent.date, Date.today)
  end

  test "date should not be changed in assigment" do
    anevent = Event.new(date: "10-10-2010")
    assert anevent.save
    assert_equal(anevent.date, "10-10-2010")
  end
end