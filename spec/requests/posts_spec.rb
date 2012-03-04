require 'spec_helper'

describe "Posts" do

  describe "GET /posts" do
    it "should display posts" do
      get('/posts')
      response.status.should be(200)
    end
  end

  describe "GET /posts/new" do
    it "should display a form to create new posts" do
      get('/posts/new')
      response.status.should be(200)
    end
  end

end
