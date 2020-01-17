//
//  ViewController.swift
//  FIrebasePushNotify
//
//  Created by Shoko Hashimoto on 2020-01-16.
//  Copyright © 2020 Shoko Hashimoto. All rights reserved.
//

import UIKit
import FirebaseMessaging
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions) { _, _ in
            print("push permission finished")
        }
        
        //sendInvitation()
    }
    
    
    func sendInvitation() {
        let userInfoRef = Database.database().reference(withPath: "invitations")
        let value = FirebaseFormat(invitationID: UserDefaults.standard.string(forKey: "FCM_TOKEN")!)
        let currentUserRef = userInfoRef.child(value.invitatinId)
        currentUserRef.setValue("kkk")
    }
    
    

}

