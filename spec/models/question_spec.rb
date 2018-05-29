require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title:"This is a question", body: "This is a body for question", resolved: false) }
  
  describe "attributes on question" do
      it "checks attributes" do
          expect(question).to have_attributes(title:"This is a question", body: "This is a body for question", resolved: false)
      end
  end
end
