require 'spec_helper'

describe PagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'videoshelf'" do
    it "returns http success" do
      get 'videoshelf'
      response.should be_success
    end
  end

  describe "GET 'portfolio'" do
    it "returns http success" do
      get 'portfolio'
      response.should be_success
    end
  end

  describe "GET 'frontend'" do
    it "returns http success" do
      get 'frontend'
      response.should be_success
    end
  end

  describe "GET 'backend'" do
    it "returns http success" do
      get 'backend'
      response.should be_success
    end
  end

  describe "GET 'responsive'" do
    it "returns http success" do
      get 'responsive'
      response.should be_success
    end
  end

  describe "GET 'testing'" do
    it "returns http success" do
      get 'testing'
      response.should be_success
    end
  end

  describe "GET 'mobile'" do
    it "returns http success" do
      get 'mobile'
      response.should be_success
    end
  end

end
