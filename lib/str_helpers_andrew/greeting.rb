module StrHelpersAndrew::Greeting
  def self.greet_user(user, greeting = 'Hello')
    "#{greeting} #{user}"
  end

end