# Type `pod update --no-repo-update` to update repos.

platform :ios, '6.0'

xcodeproj 'TestView/TestView.xcodeproj'

target 'TestView', :exclusive => true do
    pod 'TouchVG', :podspec => 'https://raw.githubusercontent.com/touchvg/vgios/develop/podspec/TouchVG.podspec'
    pod 'DemoCmds', :podspec => 'https://raw.githubusercontent.com/touchvg/DemoCmds/develop/ios/DemoCmds.podspec'
end

# To use SVGKit, uncomment the following 4 lines of target 'TestView-SVG'.
# Need to copy `https://raw.githubusercontent.com/SVGKit/SVGKit/2.x/SVGKit.podspec`
# to `~/.cocoapods/repos/master/Specs/SVGKit/2.0/` to use the lastest version of SVGKit.

#target 'TestView-SVG', :exclusive => true do
#    pod 'TouchVG-SVG', :podspec => 'https://raw.githubusercontent.com/touchvg/vgios/develop/podspec/TouchVG-SVG.podspec'
#    pod 'DemoCmds', :podspec => 'https://raw.githubusercontent.com/touchvg/DemoCmds/develop/ios/DemoCmds.podspec'
#end

pre_install do |installer|
  projfile = "TestView/TestView.xcodeproj/project.pbxproj"
  
  if File.exists?(projfile)
    File.open("proj.tmp", "w") do |io|
      io << File.read(projfile).gsub(/((OTHER_LDFLAGS)|(HEADER_SEARCH_PATHS)|(LIBRARY_SEARCH_PATHS)) =([\s]|[^;])*;[\s]*/, '')
    end
    FileUtils.mv("proj.tmp", projfile)
    system 'rm -fR TestView.xcworkspace'
  end
end
