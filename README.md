<a href="https://www.buymeacoffee.com/abedalkareem" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 20px !important;width: 100px !important; box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" > </a>
[![Telegram](https://img.shields.io/badge/chat-telegram-0088cc)](https://t.me/+NvUXzshmIg44N2M0)
[![Youtube](https://img.shields.io/badge/subscribe-youtube-c4302b)](https://www.youtube.com/c/Omreyh)
[![Twitter](https://img.shields.io/badge/follow-twitter-00acee)](https://twitter.com/abedalkareemomr)

<p align="center">
<img src="https://raw.githubusercontent.com/Abedalkareem/LanguageManager-SwiftUI/main/Images/logo.png"  width="350">  </center>
</p>
<br>

A Language manager to handle changing app language without restarting the app.

<br>


## ScreenShots

<img src="https://raw.githubusercontent.com/Abedalkareem/LanguageManager-SwiftUI/main/Images/languagemanager.gif"  width="350">

## Usage

First of all, remember to add the ```Localizable.strings``` to your project, after adding the ```Localizable.strings``` file, select it then go to file inspector and below localization press localize, after that go to ```PROJECT > Localisation```  then add the languages you want to support (Arabic for example), dialog will appear to ask you which resource file you want to localize, select just the ```Localizable.strings``` file. <br>  <br>
Now, add a ```Text``` view and then add a text to it, for example ```"Hello !"```, then go to your ```Localizable.strings``` file expand it, you will find Localizable strings file for English and Arabic, for English enter this line with the string you used in the ```Text``` view that we just mentioned before   <br>
```"Hello !" = "Hello !";```  <br>
and for Arabic file :  <br>
```"Hello !" = "مرحبا !";```  <br>


<br>

After that in you need to wrap your main view with ```LanguageManagerView``` and pass the default language that your app will run first time

```swift
@main
struct ExampleApp: App {
  var body: some Scene {
    WindowGroup {
      // The default language when the app starts for the first time.
      // it can be the `deviceLanguage`, `ar`, `en`, or any language.
      LanguageManagerView(.deviceLanguage) {
        AppView()
          .transition(.slide) // The animation that will be happening when the language change.
      }
    }
  }
}
```

If you want to change the language you should change the ```selectedLanguage``` as below

```swift
struct LangaugeView: View {
  
  // MARK: - Properties
  
  @EnvironmentObject var languageSettings: LanguageSettings
  
  // MARK: - body
  
  var body: some View {
    VStack {
      Text("Select a language")
        .padding()
      Button("Arabic") {
        withAnimation {
          languageSettings.selectedLanguage = .ar
        }
      }
      .padding()
      Button("English") {
        withAnimation {
          languageSettings.selectedLanguage = .en
        }
      }
    }
  }
}
```

## Installation

LanguageManager-iOS is available through [Swift Package Manager](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## Support me 🚀

You can support this project by:  

1- Checking my [apps](https://apps.apple.com/us/developer/id928910207).  
2- Star the repo.  
3- Share the repo with your friends.  

## Follow me ❤️

[Facebook](https://www.facebook.com/Abedalkareem.Omreyh/) | [Twitter](http://twitter.com/abedalkareemomr) | [Instagram](http://instagram.com/abedalkareemomreyh/) | [Youtube](https://www.youtube.com/user/AbedalkareemOmreyh)

## License

```
The MIT License (MIT)

Copyright (c) 2021 Abedalkareem

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
