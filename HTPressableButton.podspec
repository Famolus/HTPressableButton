Pod::Spec.new do |s|

  s.name         = "HTPressableButton"
  s.version      = "0.0.1"
  s.summary      = "A short description of HTPressableButton."
  s.homepage     = "http://github.com/herinkc/HTPressableButton"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors            = { "He Rin Kim" => "me@herinkim.com", "Thanakron Tandavas" => "thanakron@tandavas.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/herinkc/HTPressableButton.git”, :commit => ‘1d4c778b21b177ab3c18520db9ae8a8593e5d21c’}
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc = true
end
