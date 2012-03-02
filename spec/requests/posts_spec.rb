require 'spec_helper'

describe "Posts" do
  describe "GET /posts" do
    it "should display posts" do
      visit('/posts')
      response.status.should be(200)
    end
  end
end
