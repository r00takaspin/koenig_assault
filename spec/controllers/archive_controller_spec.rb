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
      puts ArchivePost.all
      response.should_not have_selector("h1",:content=>"Ахрив штурма Кенигсберга")
    end
  end

  describe "detail page"
    describe "GET 'detail'" do
      it "returns http success" do
        get 'detail',:id=>1
        response.response_code.should == 404
      end
    end

    describe "GET 'detail'" do
      it 'returns detail page' do
        @archive_post = Factory(:archive_post)
        get :detail,:id=>@archive_post.id
          response.should be_success
        end
    end

    describe "GET 'detail'" do
      it 'returns detail page' do
        @archive_post = Factory(:archive_post)
        get :detail,:id=>@archive_post.id do
          response.should have_selector("h3 strong","Test post")
        end
    end
  end


end
