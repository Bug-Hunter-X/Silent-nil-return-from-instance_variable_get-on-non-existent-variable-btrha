This repository demonstrates an unexpected behavior in Ruby when using `instance_variable_get` to access a non-existent instance variable.  The method silently returns `nil` rather than raising an exception, which can lead to hard-to-debug issues.  The `bug.rb` file shows the problem, while `bugSolution.rb` provides a potential solution using a safer approach.