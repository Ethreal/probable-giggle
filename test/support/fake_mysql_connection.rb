class FakeMysqlConnection
  attr_reader :return_value

  def initialize(return_value: 1)
    @return_value = return_value
  end

  def select_value(_query)
    return_value
  end

  def quote(str)
    "'#{str}'"
  end
end
