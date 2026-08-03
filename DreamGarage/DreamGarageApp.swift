

import SwiftUI
import FirebaseCore

@main
struct DreamGarageApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
//import SwiftUI
//
//@main
//struct DreamGarageApp: App {
//
//    @StateObject var carStore = CarStore()
//
//    var body: some Scene {
//
//        WindowGroup {
//
//            SplashView()
//                .environmentObject(carStore)
//
//        }
//    }
//}
