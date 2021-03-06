//
//  AppDelegate.swift
//  Todoey
//
//  Created by JetKane on 2019/3/19.
//  Copyright © 2019 JetKane. All rights reserved.
//

import UIKit
import CoreData
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        //print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            _ = try Realm()
        }
        catch {
            print("Error initialising new Realm: \(error)")
        }
        return true
    }
}

