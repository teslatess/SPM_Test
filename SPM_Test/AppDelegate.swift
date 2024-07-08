//
//  AppDelegate.swift
//  SPM_Test
//
//  Created by tteslatess on 08.07.2024.
//

import UIKit
import PresentationLayer

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let navigationController = UINavigationController()
        let factory = DependencyFactory()
        let coordinator = NewsListCoordinatorImpl(
            factory: factory,
            navigationController: navigationController
        )
        coordinator.start()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }

}

