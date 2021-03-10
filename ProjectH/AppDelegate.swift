//
//  AppDelegate.swift
//  ProjectH
//
//  Created by Ilyas Shomat on 09.03.2021.
//

import UIKit
import ProjectAModule
import ProjectBModule

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        
        //MARK: - Setup Hybrid App
        setupHybridModule()
        
        //MARK: - Setup Project A
        ProjectAModuleConnector.setupModule(appDelegate: self)

        //MARK: - Setup Project B
        ProjectBModuleConnector.setupModule(appDelegate: self)
        
        return true
    }

    
    
    private func setupHybridModule() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle(identifier: "test.test.ProjectH"))
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "ViewController")
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}

