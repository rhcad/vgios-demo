# TouchVG Demo for iOS

This is a unit test and example project for [TouchVG](https://github.com/touchvg/vgios), which is a lightweight 2D vector drawing framework for iOS.

![arch](http://touchvg.github.io/images/arch.svg)

## License

This is an open source [LGPL 2.1](LICENSE.md) licensed project. It uses the following open source projects:

- [TouchVG](https://github.com/touchvg/vgios) (LGPL): Vector drawing framework for iOS.
- [TouchVGCore](https://github.com/touchvg/vgcore) (LGPL): Cross-platform vector drawing libraries using C++.
- [SVGKit](https://github.com/SVGKit/SVGKit) (MIT): Display and interact with SVG Images with CoreAnimation on iOS.
- [DemoCmds](https://github.com/touchvg/DemoCmds): A template and example project containing customized shape and command classes.

## How to Compile

### Compile with CocoaPods

Type `pod install` or `pod update --no-repo-update`, then open `TestView.xcworkspace` in Xcode and run the `TestView` demo app.

The `TestView` demo app has two targets:

- `TestView` target using `libTouchVG.a` does not support SVG display.
- `TestView-SVG` target using `libTouchVG-SVG.a` and `SVGKit` can display SVG shapes.

- To run on device, you may need to change the Bundle Identifier of the demo application, such as "com.yourcompany.TestView", and choose your own development certificate (Code Signing).

To use SVGKit, uncomment 4 lines about 'TestView-SVG' target in the Podfile.


### Compile without CocoaPods

Alternatively, you can build as one of the following methods:

- Cd the folder of this project and type `./build.sh` or `./build.sh -arch arm64` to checkout and build libraries needed.

- Open `TestView.xcworkspace` in Xcode, then run the `TestView` demo app (Need to build each library while not type `./build.sh`).

## Add more shapes and commands

- Do not want to write C++ code? Please reference to [test/src/vgtest/testview/shape](test/src/vgtest/testview/shape) package to write your own shape and command classes.

- You can create library project containing your own shapes and commands. So the TouchVG and TouchVGCore libraries does not require changes.

  - Checkout and enter [DemoCmds](https://github.com/touchvg/DemoCmds) directory, then type `python newproj.py YourCmds`:

     ```shell
     git clone https://github.com/touchvg/DemoCmds.git
     cd DemoCmds
     python newproj.py MyCmds
     ```

- You can customize the drawing behavior via implement your CmdObserver class (see the example in [DemoCmds](https://github.com/touchvg/DemoCmds) ).

## How to Contribute

Contributors and sponsors are welcome. You may translate, commit issues or pull requests on this Github site.
To contribute, please follow the branching model outlined here: [A successful Git branching model](http://nvie.com/posts/a-successful-git-branching-model/).

Welcome to the Chinese QQ group `192093613` to discuss and share.
