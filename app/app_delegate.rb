class AppDelegate
  attr_accessor :window

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    BW.debug = true
    true
  end

  def application(application, handleOpenURL: url)
    params = url.fragment.split('&').inject({}) do |params, kv|
      k, v = kv.split('=')
      params.merge! k.to_sym => v
    end
    if params[:error]
      App.alert "#{params[:error]}:: #{params[:error_description]}"
    else
      YConnect.verify_id_token! params[:id_token] do |id_token|
        profile_view_controller = StoryBoard.load :ProfileViewController
        profile_view_controller.current_user = User.new(
          id_token: id_token,
          access_token: params[:access_token]
        )
        navigation_controller = window.rootViewController
        navigation_controller.popToRootViewControllerAnimated true
        navigation_controller.pushViewController profile_view_controller, animated: true
      end
      
    end
    true
  end
end
