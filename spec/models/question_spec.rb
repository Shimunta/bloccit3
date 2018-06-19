require 'rails_helper'

RSpec.describe Question, type: :model do
    let(:question) { Question.create!(title: "First question", body: "Here", resolved: false) }
    
    describe "attributes" do
        it "has attributes title, body, resolved" do
            expect(question). to have_attributes(title: "First question", body: "Here", resolved: false)
        end
  end
end
