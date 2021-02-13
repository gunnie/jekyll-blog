---
layout: post
title:  "Automating Capacitor iOS builds with GitHub Actions"
date:   2021-02-13 11:52:22 -0300
categories: github capacitor cordova ios ci
author: Gunther Renneboog
---

Capacitor, as explained in the [docs][capacitor-docs], is a cross-platform native runtime that makes it easy to build modern web apps that run natively on iOS, Android, and the Web.
It's the spiritual successor to Apache Cordova. The main advantage is that it allows for the production of native apps using only typical web developer skills. That's a huge plus for businesses that specialize in React, Angular etc.

Out-of-the-box  Capacitor comes with a set of plugins that take care of native functionality, thus covering most use cases. Obviously not every project is a good match for Capacitor, you'll have to decide if it is based on your requirements.

Once you've decided to go with Capacitor, did the setup - see [instructions][capacitor-ios-docs] - and some coding, you'll quickly have the iOS app running on the simulator and/or a device. But you would still have to distribute the app yourself for others to admire your work, and that's where continuous integration (CI) saves the day.

Using [GitHub Actions][github-actions] you can automate the iOS workflow by defining the steps in yaml format. This allows you to run the entire test, build, and distribution process, in the cloud after (for example) a push request.

This is what a succesful build looks like on GitHub:
<img class="responsive" alt="GitHub Actions " src="/assets/images/github_actions_build.png">
<br/>

### Further reading:

I could provide source code, and detailed instructions, but others have already done a great job of that. Here are a few posts that helped me get started:
* <https://dev.to/matt_catalfamo/how-to-build-and-manually-sign-an-ios-app-with-fastlane-2256>
* <https://preece.dev/2020/06/ios-testflight-deploy-with-github-actions/>
* <https://sarunw.com/posts/github-actions-for-ios-projects/>
* <https://hartl.co/2020/02/09/CI-and-TestFlight-deployment-using-github-actions.html>
* <https://developer.apple.com/documentation/appstoreconnectapi/creating_api_keys_for_app_store_connect_api>


I would also like to mention the great work done by the people behind [fastlane][fastlane]. They provide a lot of tools to make life easier for app developers. And all for free.


[capacitor-docs]: https://capacitorjs.com/docs
[capacitor-ios-docs]: https://capacitorjs.com/docs/ios
[github-actions]: https://github.com/features/actions
[fastlane]: https://fastlane.tools/