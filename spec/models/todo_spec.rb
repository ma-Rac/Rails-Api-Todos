require 'rails_helper'

describe Todo do
  describe 'description validation' do
    it "is invalid without a description" do
      todo = Todo.new(title: "")
      todo.valid?
      expect(todo.errors).to have_key (:title)
    end
  end
end

describe 'completed status should be nil' do
    it "is false when a new todo is created" do
    todo = Todo.new(title: "hello")
    expect(todo.completed).to be(nil)
  end
end
