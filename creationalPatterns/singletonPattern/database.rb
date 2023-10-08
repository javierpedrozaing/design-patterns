class Database
  attr_reader :user, :password, :db_name

  @instance_mutex = Mutex.new
  # metodo de clase
  def self.getInstance(user, password, db_name)
    @instance unless @instance.nil?
    @instance_mutex.synchronize do
      @instance ||= Database.new(user, password, db_name)
    end

    @instance
  end
  
  def some_business_logic
    # ...
  end

  def initialize(user, password, db_name)
    @user = user
    @password = password
    @db_name = db_name
  end
end


def test_singleton(user, password, db_name)
  singleton = Database::getInstance(user, password, db_name)
  puts singleton.user
  puts singleton.password
  puts singleton.db_name
end

process1 = Thread.new { test_singleton('admin', '123456', 'website_db') }
process2 = Thread.new { test_singleton('admin2', '123123', 'website2_db') }
process1.join
process2.join

