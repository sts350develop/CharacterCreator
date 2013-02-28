require 'spec_helper'

describe Asset do
  it "can be instantiated" do
    Asset.new.should be_an_instance_of(Asset)
  end

  it "can be saved successfully" do
    Asset.create.should be_persisted
  end

  end