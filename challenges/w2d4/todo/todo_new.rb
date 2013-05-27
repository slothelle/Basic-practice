require 'csv'

class Controller
  def initialize(list_items)
    @list_items = list_items
  end

  def add(task)
    @list_items.add_task_to_list(Task.new(task))
  end 

  def delete(task_number)
    @list_items.delete_task_from_list(task_number)
  end 

  def complete(task_number)
    @list_items.list_items[(task_number.to_i - 1)].complete_task
  end

  def list
    @list_items.display_list
  end 
end 

class FileCSV < Controller
  def load_file(filename)
    CSV.foreach(filename) do |row|
      @list_items.add_task_to_list(Task.new(row))
    end 
  end

  def save_file(filename)
    CSV.open(filename, "wb") do |file|
      @list_items.list_items.each do |task| 
        arr = []
        arr << task.task.join(" ")
        file << arr
      end 
    end
  end 
end 

class List
  attr_reader :list_items

  def initialize
    @list_items = []
  end 

  def add_task_to_list(task)
    @list_items << task
  end 

  def delete_task_from_list(task_number)
    @list_items.delete_at(task_number.to_i - 1)
  end

  def display_list
    n = 0
    result = []
    list = @list_items.map { |t| "#{t.complete} #{t.task.join(" ")}" }
    list.each do |item|
      item.gsub!("false", "[ ]")
      item.gsub!("true", "[X]")
      result << "#{n+=1}. #{item} \n"
    end
    result
  end 
end 

class Task
  attr_accessor :complete, :task_items
  attr_reader :task
  
  def initialize(task) # takes input as string 
    @task = task
    @task_items = {}
    @complete = false
    @task_items[task.join(" ")] = @complete # hash with todo as key, truthy as value
  end

  def complete_task
    @task_items[find_key] = true
    @complete = true
  end

  def delete_task
    @task_items.delete(find_key)
  end

  private
  def find_key
    task = @task_items.keys
    task.join(" ")
  end 
end 