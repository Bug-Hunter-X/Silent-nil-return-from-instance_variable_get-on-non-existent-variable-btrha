```ruby
def safe_get_instance_variable(object, variable_name)
  object.instance_variable_defined?(variable_name) ? object.instance_variable_get(variable_name) : raise("Instance variable '#{variable_name}' not defined")
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set('@value', 20)
puts my_object.value #=> 20

begin
  puts safe_get_instance_variable(my_object, '@non_existent')
rescue => e
  puts "Error: #{e.message}"
ensure
 puts "Exiting gracefully"
end
```