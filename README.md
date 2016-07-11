# sunnyMobObjectiveCDemo
Demo application featuring the use of Sunny Framework for displaying video ads and interstitials in your iOS application based on Objective C.

You can use this project to run a demo and as a reference. 
For your own iOS project you need to copy and import the **Sunny.framework** file to your project and follow these steps:

**Step 1:** Select your proj file, go to General tab while selecting your app target and ensure that **Sunny.framework** has been added to **Embedded Binaries** as well as **Linked Frameworks and Libraries**

**Step 2:** Go to project build settings and set ``Embedded Content Contains Swift Code`` flag to ``YES``.

**Step 3:** Go to Info tab to edit your project’s *Info.plist* and add the following key value pairs:

	
	App Transport Security Settings: {
	Allow Arbitrary Loads: YES }
	

**Step 4:** Go to *Appdelegate.m* file and add ``#import <Sunny/Sunny-Swift.h>``. Add the following lines of code in **didFinishLaunchingWithOptions** method:
        
        
        SMLManager *smlManager = [SMLManager sharedInstance];
        [smlManager initializeWithToken:@"1ebbd869-0d6d-44f1-a974-a6e2db04b4a6"];
        
        
 > the token can be created here (iOS_SDK):http://sunnymob.com/dev/apps/index
 
**Step 5:** You can now use the following lines of code to show advertisement in your application:
    	
      SMLManager *smlManager = [SMLManager sharedInstance];
      SMLAdvertisementStatus status = [smlManager showAdvertisement:self];
      switch (status) {
          case SMLAdvertisementStatusComplete:
              NSLog(@"No error found");
              break;
          case SMLAdvertisementStatusReady:
              NSLog(@"NOW READY TO SHOW AD");
              //If your application is having user intensive functionality, you can choose to comment the following line of code.
              [smlManager showAdvertisement:self];
              break;
          case SMLAdvertisementStatusError:
              NSLog(@"Error! Please check your token or contact SunnyMob Customer Care");
              break;
      }


> **Note: Please make sure that you use ``#import <Sunny/Sunny-Swift.h>`` in the files where you are using SMLManager.**
