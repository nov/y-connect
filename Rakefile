# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
Bundler.require

require_relative 'app/lib/y_connect'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'YConn'
  app.identifier = 'jp.matake.y-connect'
  app.version = '1.0.0'
  app.interface_orientations = [:portrait]
  app.status_bar_style = :black_opaque
  app.info_plist.merge!(
    'UIMainStoryboardFile' => 'MainStoryboard',
    'CFBundleURLTypes' => [{
      'CFBundleURLName' => app.identifier,
      'CFBundleURLSchemes' => [YConnect.config[:redirect_uri].split(':').first]
    }]
  )
  app.frameworks << 'Security'
end
