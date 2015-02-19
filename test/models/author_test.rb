require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
  end

  test "there are authors" do
    assert Author.count > 0
  end

  test "email must be unique" do
    pseudo_author = Author.new(name:"Wilhelm Faulkner", email: "william@william.com")
    refute pseudo_author.save
  end

  test "validations pass" do
    assert_difference "Author.count", 1 do
      Author.create(name: "Elmore Leonard", email: "raylan@raylan.com", password:"MyString")
    end
  end

  # test "find_specific_email" do
  #   assert_equal "albert@albert.com", Author.find_specific_email(email: "albert@albert.com").name
  # end
end
