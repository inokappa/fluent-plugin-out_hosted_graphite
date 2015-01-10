# -*- encoding: utf-8 -*-

describe Fluent::OutHostedGraphite do
  let(:driver)   { Fluent::Test::OutHostedGraphite.new(Fluent::OutHostedGraphite, 'test.metrics').configure(config) }
  let(:instance) { driver.instance }

  let(:config) do
    %[
      api_key xxxxxxxxxxxxxxxxxxxx
      ]
  end

  describe "config" do
    it "should get api_key" do
      expect( instance.api_key ).to eq "xxxxxxxxxxxxxxxxxxxx"
    end
  end
end
