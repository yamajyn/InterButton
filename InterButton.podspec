Pod::Spec.new do |spec|
  spec.name         = "InterButton"
  spec.version      = "0.0.1"
  spec.summary      = "InterButton makes the button smaller when tapped."
  spec.homepage     = "https://github.com/yamajyn/InterButton"
  spec.license      = { :type => "MIT", :file => "License.md" }
  spec.author    = "Junya Yamamoto"
  spec.social_media_url   = "https://twitter.com/yamajyn"
  spec.platform     = :ios, "14.0"
  spec.ios.deployment_target = "14.0"
  spec.swift_versions = "4.0"
  spec.source       = { :git => "https://github.com/yamajyn/InterButton.git", :tag => "#{spec.version}" }
  spec.source_files  = "Classes", "InterButton/InterButton.swift"
end
