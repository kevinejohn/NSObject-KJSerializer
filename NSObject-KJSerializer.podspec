Pod::Spec.new do |s|
  s.name             = "NSObject-KJSerializer"
  s.version          = "0.0.1"
  s.summary          = "Easy way to automate the mapping of NSObjects to NSDictionary and back again. Great for JSON handling."
  s.homepage         = "https://github.com/kevinejohn/NSObject-KJSerializer"
  s.license          = 'MIT'
  s.author           = { "kevinejohn" => "" }
  s.source           = { :git => "https://github.com/kevinejohn/NSObject-KJSerializer.git", :tag => s.version.to_s }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.source_files = 'KJObjectSerialize/*'
  s.frameworks = 'Foundation'
end
