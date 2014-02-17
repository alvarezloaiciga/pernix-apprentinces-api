require 'spec_helper'
describe Api::V1::AppliesController, "#create" do
  let(:params) { { github: "www.github.com/test/tic_tac_toe", email: "test@email.com" } }

  it "creates an apply" do
    expect(Apply).to receive(:new).with(params.stringify_keys)
    post :create, params
  end

  it "saves the apply" do
    apply = double(:apply)
    allow(Apply).to receive(:new) { apply }
    expect(apply).to receive(:save) { true }
    post :create, params
  end
end
