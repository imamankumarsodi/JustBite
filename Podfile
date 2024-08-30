# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'JustBite' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for JustBite

  pod 'Fabric'
  pod 'Crashlytics'
  pod 'TPKeyboardAvoiding'
  pod 'PromiseKit', '~> 6.0'
  pod 'ObjectMapper'
  pod 'Alamofire', '~> 4.7'
  pod 'AlamofireImage'
 # pod 'FacebookCore'
 # pod 'FacebookLogin'
 # pod 'ReachabilitySwift'
  pod 'SwiftyJSON', '~> 4.0.0-alpha.1'
 # pod 'SVProgressHUD'
  pod 'XCGLogger', '~> 6.1.0'
  pod 'MaterialComponents/TextFields+Extensions'
 # pod 'GooglePlaces'
  pod 'GoogleMaps'
 # pod 'GoogleSignIn'
 # pod 'Cosmos', '~> 19.0'
  pod 'CollapsibleTableSectionViewController', '~> 1.0.0'
  pod 'Cosmos', '~> 19.0'
  pod 'KYDrawerController'

  target 'JustBiteTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'JustBiteUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = 'NO'
        end
    end
end
