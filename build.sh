#!/bin/sh
# Type './build.sh' to make iOS libraries.
# Type './build.sh -arch arm64' to make iOS libraries for iOS 64-bit.
# Type './build.sh clean' to remove object files.

if [ ! -f ../vgcore/ios/build.sh ] ; then
    git clone https://github.com/rhcad/vgcore ../vgcore
fi
if [ ! -f ../vgios/build.sh ] ; then
    git clone https://github.com/rhcad/vgios ../vgios
fi
if [ ! -f ../DemoCmds/ios/build.sh ] ; then
    git clone https://github.com/rhcad/DemoCmds ../DemoCmds
fi
if [ ! -f ../SVGKit/SVGKit.podspec ] ; then
    git clone https://github.com/SVGKit/SVGKit ../SVGKit
fi

iphoneos71=`xcodebuild -showsdks | grep -i iphoneos7.1`
iphoneos70=`xcodebuild -showsdks | grep -i iphoneos7.0`
iphoneos61=`xcodebuild -showsdks | grep -i iphoneos6.1`
iphoneos51=`xcodebuild -showsdks | grep -i iphoneos5.1`
iphoneos43=`xcodebuild -showsdks | grep -i iphoneos4.3`

vgiospath=../vgios
corepath=../vgcore/ios/TouchVGCore
demopath=../DemoCmds/ios/DemoCmds
SVG_path=../SVGKit

if [ -n "$iphoneos71" ]; then
    xcodebuild -project $vgiospath/TouchVG.xcodeproj $1 $2 -sdk iphoneos7.1 -configuration Release -alltargets
    xcodebuild -project $demopath/DemoCmds.xcodeproj $1 $2 -sdk iphoneos7.1 -configuration Release
    xcodebuild -project $corepath/TouchVGCore.xcodeproj $1 $2 -sdk iphoneos7.1 -configuration Release
    xcodebuild -project $SVG_path/SVGKit-iOS.xcodeproj $1 $2 -sdk iphoneos7.1 -configuration Release
else
if [ -n "$iphoneos70" ]; then
    xcodebuild -project $vgiospath/TouchVG.xcodeproj $1 $2 -sdk iphoneos7.0 -configuration Release -alltargets
    xcodebuild -project $demopath/DemoCmds.xcodeproj $1 $2 -sdk iphoneos7.0 -configuration Release
    xcodebuild -project $corepath/TouchVGCore.xcodeproj $1 $2 -sdk iphoneos7.0 -configuration Release
    xcodebuild -project $SVG_path/SVGKit-iOS.xcodeproj $1 $2 -sdk iphoneos7.0 -configuration Release
else
if [ -n "$iphoneos61" ]; then
    xcodebuild -project $vgiospath/TouchVG.xcodeproj $1 $2 -sdk iphoneos6.1 -configuration Release -alltargets
    xcodebuild -project $demopath/DemoCmds.xcodeproj $1 $2 -sdk iphoneos6.1 -configuration Release
    xcodebuild -project $corepath/TouchVGCore.xcodeproj $1 $2 -sdk iphoneos6.1 -configuration Release
    xcodebuild -project $SVG_path/SVGKit-iOS.xcodeproj $1 $2 -sdk iphoneos6.1 -configuration Release
else
if [ -n "$iphoneos51" ]; then
    xcodebuild -project $vgiospath/TouchVG.xcodeproj $1 $2 -sdk iphoneos5.1 -configuration Release
    xcodebuild -project $demopath/DemoCmds.xcodeproj $1 $2 -sdk iphoneos5.1 -configuration Release
    xcodebuild -project $corepath/TouchVGCore.xcodeproj $1 $2 -sdk iphoneos5.1 -configuration Release
    xcodebuild -project $SVG_path/SVGKit-iOS.xcodeproj $1 $2 -sdk iphoneos5.1 -configuration Release
else
if [ -n "$iphoneos43" ]; then
    xcodebuild -project $vgiospath/TouchVG.xcodeproj $1 $2 -sdk iphoneos4.3 -configuration Release
    xcodebuild -project $demopath/DemoCmds.xcodeproj $1 $2 -sdk iphoneos4.3 -configuration Release
    xcodebuild -project $corepath/TouchVGCore.xcodeproj $1 $2 -sdk iphoneos4.3 -configuration Release
fi
fi
fi
fi
fi

mkdir -p output/TouchVG
cp -R $vgiospath/build/Release-universal/*.a output
cp -R $vgiospath/build/Release-universal/include/TouchVG output

mkdir -p output/DemoCmds
cp -R $demopath/build/Release-universal/libDemoCmds.a output
cp -R $demopath/build/Release-universal/include/DemoCmds output

mkdir -p output/TouchVGCore
cp -R $corepath/build/Release-universal/libTouchVGCore.a output
cp -R $corepath/build/Release-universal/include/TouchVGCore output

cp -R $SVG_path/build/Release-universal/*.a output
