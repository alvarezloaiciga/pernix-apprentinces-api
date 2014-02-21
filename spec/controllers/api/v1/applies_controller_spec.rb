require 'spec_helper'
describe Api::V1::AppliesController, "#create" do
  let(:params) { { github: "www.github.com/test/tic_tac_toe", email: "test@email.com" } }
  let(:apply) { double(:apply).as_null_object }

  before { allow(Apply).to receive(:new) { apply } }

  it "creates an apply" do
    expect(Apply).to receive(:new).with(params.stringify_keys)
    post :create, apply: params
  end

  it "saves the apply" do
    expect(apply).to receive(:save) { true }
    post :create, apply: params
  end
end
