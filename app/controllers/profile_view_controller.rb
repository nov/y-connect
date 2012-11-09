class ProfileViewController < UIViewController
  attr_accessor :current_user, :title_label, :user_info_area, :logout_button

  def viewDidLoad
    super
    $debug = current_user
    YConnect.fetch_user_info! current_user.access_token do |user_info|
      title_label.text = "Hello, #{user_info['name']}!"
      user_info_area.text = BW::JSON.generate user_info
    end
  end

  def logout(sender)
    navigationController.popViewControllerAnimated true
  end
end