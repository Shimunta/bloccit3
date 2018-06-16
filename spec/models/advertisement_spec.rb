require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "Money", body: "Ad here", price: 50) }
  
  describe "attributes" do
      it "has title, body, price attributes" do
          expect(advertisement).to have_attributes(title: "Money", body: "Ad here", price: 50)
      end
  end
end
