require_relative 'todo_new'

# take ARGV
# print a list of all to dos by typing 'list'

list = List.new
controller = Controller.new(list)
csv = FileCSV.new(list)

csv.load_file('todo.csv')
controller.complete('1')
controller.complete('3')
controller.add(['Walk the dog'])
controller.delete(14)
controller.add(['Walk the dog'])
controller.add(['Eat some trees'])

csv.save_file('todo_new.csv')