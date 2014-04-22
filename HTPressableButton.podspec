Pod::Spec.new do |s|

  s.name         = "HTPressableButton"
  s.version      = "0.0.1"
  s.summary      = "A short description of HTPressableButton."
  s.homepage     = "http://github.com/herinkc/HTPressableButton"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors            = { "He Rin Kim" => "me@herinkim.com", "Thanakron Tandavas" => "thanakron@tandavas.com" }
  s.platform     = :ios, "5.0"
  s.source       = { :git => "http://github.com/herinkc/HTPressableButton.git", :tag => "0.0.1" }
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

end
