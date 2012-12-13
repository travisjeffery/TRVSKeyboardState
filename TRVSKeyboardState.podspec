Pod::Spec.new do |s|
  s.name         = "TRVSKeyboardState"

  s.version      = "0.0.1"

  s.summary      = "A small little helper object to check whether the keyboard is showing or hidden and run blocks on hiding/showing."

  s.homepage     = "https://github.com/travisjeffery/TRVSKeyboardState"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Travis Jeffery" => "travisjeffery@gmail.com" }

  s.source       = { :git => "https://github.com/travisjeffery/TRVSKeyboardState.git", :tag => "0.1.0" }

  s.platform     = :ios, '5.0'

  s.source_files = '*.{h,m}'

  s.requires_arc = true
end
