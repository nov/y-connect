class RootViewController < UIViewController
  attr_accessor :connect_button

  def connect(sender)
    YConnect.require_authorization!
  end
end