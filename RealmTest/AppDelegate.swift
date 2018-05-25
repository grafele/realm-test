//
//  AppDelegate.swift
//  RealmTest
//
//  Created by Stefan Kofler on 25.05.18.
//  Copyright © 2018 Zeppelin GmbH. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

let objectServerURL = URL(string: "http://52.59.166.254:9080")!
let sharedRealmURL = URL(string: "realm://52.59.166.254:9080/shared/steuerungsapp")!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow(frame: UIScreen.main.bounds)

    var syncToken: RLMSyncSession.ProgressNotificationToken? = nil

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()

        SyncUser.logIn(with: .usernamePassword(username: "steuerung@zeppelin.com", password: "0000"), server: objectServerURL) { syncUser, error in
            guard let user = syncUser else { return }
            print("Logged in succesfully")

            let syncConfig = SyncConfiguration(user: user, realmURL: sharedRealmURL)
            let realmConfig = Realm.Configuration(fileURL: sharedRealmURL, inMemoryIdentifier: nil, syncConfiguration: syncConfig, encryptionKey: nil, readOnly: false, schemaVersion: 5, migrationBlock: nil, deleteRealmIfMigrationNeeded: false, shouldCompactOnLaunch: nil, objectTypes: nil)

            Realm.asyncOpen(configuration: realmConfig, callbackQueue: DispatchQueue.main) { (realm, error) in
                print("Loaded realm successfully")
            }

            let session = user.session(for: sharedRealmURL)!
            self.syncToken = session.addProgressNotification(for: .download, mode: .reportIndefinitely) { progress in
                let logText = String(format: "%.2f%% of %i MB loaded", progress.fractionTransferred * 100, progress.transferrableBytes / (1024*1024))
                print(logText)
            }

        }

        return true
    }

}
