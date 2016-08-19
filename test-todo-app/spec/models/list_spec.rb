require 'rails_helper'

RSpec.describe List, type: :model do
  describe '#complete_all_tasks!' do
    it 'marks all tasks from the list as complete' do
    list = List.create(name: "Chores")
    Task.create(complete: false, list_id: list.id, name: "Take out the trash")
    Task.create(complete: false, list_id: list.id, name: "Practice")
    list.complete_all_tasks!
    list.tasks.each do |task|
      expect(task.complete).to eq(true)
    end
    end
  end

  describe '#snooze_all_tasks!' do
    it 'Takes each task and adds hours to snooze.' do
    list = List.create(name: "Chores")
    time = Time.now
    Task.create(deadline: time + 1.hour, list_id: list.id, name: "Go buy groceries")
    Task.create(deadline: time + 1.hour, list_id: list.id, name: "Clean the room")
    list.snooze_all_tasks!
    list.tasks.each do |task|
      expect(task.deadline).to eq(time + 2.hours)
    end
    end
  end

  describe '#total_duration' do
    it 'Adds the total value for duration.' do
      list = List.create(name: "Chores")
      Task.create(duration: 2, list_id: list.id, name: "Go to bed")
      Task.create(duration: 3, list_id: list.id, name: "Cook dinner")
      expect(list.total_duration).to eq(5)
    end
  end

  describe "#incomplete_tasks" do
    it 'Adds incomplete tasks into an array.' do
      list = List.create(name: "Incomplete tasks")
      task1= Task.create(complete: true, list_id: list.id, name: "Clean the bathroom")
      task2= Task.create(complete: false, list_id: list.id, name: "Buy food")
      task3= Task.create(complete: false, list_id: list.id, name: "Kill rats")
      expect(list.incomplete_tasks).to match([task2, task3])
    end
  end

  describe "#favorite_tasks" do
    it 'Adds favorite tasks into an array.' do
      list = List.create(name: "Incomplete tasks")
      task1= Task.create(favorite: true, list_id: list.id, name: "Clean the bathroom")
      task2= Task.create(favorite: true, list_id: list.id, name: "Buy food")
      task3= Task.create(favorite: false, list_id: list.id, name: "Kill rats")
      expect(list.favorite_tasks).to match([task1, task2])
    end
  end
end
