require 'rails_helper'

describe "GET todos" do
  it "returns Todos" do
    get todos_path, format: :json
    todo = Todo.new(title: "Smaxy")

    expect(response.status).to eq 200
    
  end
end
