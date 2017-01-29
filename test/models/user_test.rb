require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foo1234567", password_confirmation: "foo1234567")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = "     "
    assert_not @user.valid?
  end

  test "email address should not be too big" do
    @user.email = "abc" * 100
    assert_not @user.valid?
  end

  test "password and confirmation should match" do
    @user.password = "blahBlahBlah1"
    @user.password = "blahBlahBlah2"
    assert_not @user.valid?
  end
end

