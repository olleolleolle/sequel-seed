# Applies only to "development" and "test" environments
Sequel.seed(:development, :test) do
  def run
    User.create \
      full_name: 'Richard Feynman',
      profession: 'Theoretical physicist',
      username: 'rfeynman',
      password: '271828'
  end
end

# Wildcard Seed; applies to every environment
Sequel.seed do
  def run
    [
      ['USD', 'United States dollar'],
      ['BRL', 'Brazilian real']
    ].each do |abbr, name|
      Currency.create abbr: abbr, name: name
    end
  end
end
