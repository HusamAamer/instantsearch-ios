Pod::Spec.new do |s|
  s.name = 'InstantSearch'
  s.version = '7.9.0'
  s.platforms = { :ios => "9.0", :osx => "10.10", :watchos => "3.0", :tvos => "9.0" }

  s.license = { type: 'Apache 2.0', file: 'LICENSE.md' }
  s.summary = 'A library of widgets and helpers to build instant-search applications on iOS.'
  s.homepage = 'https://github.com/algolia/instantsearch-ios'
  s.author = { "Algolia" => "contact@algolia.com" }
  s.source = { :git => 'https://github.com/algolia/instantsearch-ios.git', :tag => s.version }

  s.swift_version = "5.1"
  
  s.default_subspec = 'UI'
  
  s.subspec "Insights" do |ss|
      ss.source_files = 'Sources/InstantSearchInsights/**/*.{swift}'
      ss.dependency 'AlgoliaSearchClient', '~> 8.7'
      ss.ios.deployment_target = '9.0'
      ss.osx.deployment_target = '10.10'
      ss.watchos.deployment_target = '3.0'
      ss.tvos.deployment_target = '9.0'
  end
  
  s.subspec "Core" do |ss|
      ss.source_files = 'Sources/InstantSearchCore/**/*.{swift}'
      ss.dependency 'AlgoliaSearchClient', '~> 8.7'
      ss.dependency 'InstantSearch/Insights'
      ss.ios.deployment_target = '9.0'
      ss.osx.deployment_target = '10.10'
      ss.watchos.deployment_target = '3.0'
      ss.tvos.deployment_target = '9.0'
      ss.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DInstantSearchCocoaPods' }
  end
  
  s.subspec "UI" do |ss|
      ss.source_files = 'Sources/InstantSearch/**/*.{swift}'
      ss.dependency 'InstantSearch/Core'
      ss.ios.deployment_target = '9.0'
      ss.osx.deployment_target = '10.10'
      ss.watchos.deployment_target = '3.0'
      ss.tvos.deployment_target = '9.0'
      ss.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DInstantSearchCocoaPods' }
  end
  
end
