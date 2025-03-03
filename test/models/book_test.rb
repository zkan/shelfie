require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "valid book" do
    book = Book.new(
      title: "Seeing the Forest for Trees: A Manager's Guide to Applying Systems Thinking",
      author: "Dennis Sherwoord",
      isbn: "978-1857883114",
      publisher: "Nicholas Brealey Publishing"
    )
    assert book.valid?
  end
end
