module StrHelpersAndrew::Greetings
  def self.greet_user(user, greeting = 'Hello')
    "#{greeting} #{user}"
  end

end