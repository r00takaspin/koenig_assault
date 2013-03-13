require 'spec_helper'

describe ArchivePost do

  before(:each) do
    @attr = { :name => "Test title", :preview_content => "Sample preview string",:detail_content=>"Sample detail text" }
  end

  it "should create a new instance given valid attributes" do
    ArchivePost.create!(@attr)
  end

  it "should require a name" do
  	post = ArchivePost.new(@attr.merge({:name=>""}))
  	post.should_not be_valid
  end

  it 'should require preview text' do
  	post = ArchivePost.new(@attr.merge({:preview_content=>""}))
  	post.should_not be_valid
  end

  it 'should require detail text' do
  	post = ArchivePost.new(@attr.merge({:detail_content=>""}))
  	post.should_not be_valid
  end
end