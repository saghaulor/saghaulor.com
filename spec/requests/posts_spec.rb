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

  describe "GET /posts/:id" do
    it "should display the post with id" do
      get('/posts/:id')
      response.status.should be(200)
    end
  end

  describe "PUT /posts/:id" do
    it "should update the post with id" do
      put('/posts/:id')
      response.status.should be(200)
    end
  end

  describe "DESTROY /posts/:id" do
    it "should destroy the post with id" do
      delete('/posts/:id')
      response.status.should be(200)
    end
  end

end
