require 'active_model'
require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'rails_form_backing_objects', 'base'))

class BackingObject < RailsFormBackingObjects::Base
  attribute(:an_integer) {|v| v.to_i }
  attribute(:a_string)
end

describe RailsFormBackingObjects::Base do
  subject { BackingObject.new }

  its(:persisted?) { should be_false }

  it "defines simple accessors for simple attributes" do
    subject.a_string = "foo"
    subject.a_string.should eq("foo")
  end

  it "applies conversions when supplied" do
    subject.an_integer = "3"
    subject.an_integer.should eq(3)
  end

  context "when initialized using a hash" do
    subject do
      BackingObject.new :a_string => "bar", :an_integer => "6"
    end

    its(:a_string) { should eq("bar") }
    its(:an_integer) { should eq(6) }
  end
end
