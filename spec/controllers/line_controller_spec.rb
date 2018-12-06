require 'rails_helper'

RSpec.describe LineController, type: :controller do

  before do
    @lineObj = LineController.new
  end

  it "should return a json obj include OK value" do
    expect( @lineObj.simple_msg("OK")).to eq(message = {type: 'text',text: 'OK'})
  end

  it "should return nil" do
    expect( @lineObj.reply_to_line(nil)).to eq(nil)
  end

end
