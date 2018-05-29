require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title:"This is a question", body: "This is a body for question", resolved: false) }
  let(:answer) { Answer.create!(body: "This is the answer", question: question) }
  
  describe "answers attribues"  do
      it "confirms attribues and id" do
          expect(answer). to have_attributes(body: "This is the answer")
      end
  end
end
