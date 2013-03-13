# encoding: UTF-8
require 'spec_helper'

describe ArchiveController do
  render_views

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "archive should have right title" do
    it 'return right title' do
      get :index
      response.should have_selector("title",:content=>"Ахрив штурма Кенигсберга")
    end
  end


  describe "archive should have h1 tag" do
    it 'render right h1' do
      get :index
      response.should have_selector("h1",:content=>"Ахрив штурма Кенигсберга")
    end
  end

  describe "GET 'detail'" do
    it "returns http success" do
      get 'detail'
      response.should be_success
    end
  end


end
