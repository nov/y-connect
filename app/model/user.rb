class User
  attr_accessor :id_token, :access_token

  def initialize(attributes = {})
    self.id_token = attributes[:id_token]
    self.access_token = attributes[:access_token]
  end
end