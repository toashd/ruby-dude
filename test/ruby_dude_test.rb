require_relative '../test/test_helper'

describe RubyDude do
  it "must be defined" do
    RubyDude::VERSION.wont_be_nil
  end
end