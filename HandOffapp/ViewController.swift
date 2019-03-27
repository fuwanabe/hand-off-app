//
//  ViewController.swift
//  HandOffapp
//
//  Created by 渡邉 風基 on 2019/03/26.
//  Copyright © 2019 Fuki Watanabe. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userActivity = SiriShortcut.createActivity(activityType: "com.fwatanabe.HandOffapp.my-activity-type", title: "アシスタントを起動", keywords: ["アシスタント","アシスタントを呼ぶ"], contentDescription: "アシスタントを起動する", suggestedInvocationPhrase: "CallAssistant")
        
        userActivity?.becomeCurrent()
    }


}

//extension NSUserActivity {
//
//    public static let myActivityType = "com.myapp.name.my-activity-type"
//
//    public static var myActivity: NSUserActivity {
//        let userActivity = NSUserActivity(activityType: myActivityType)
//
//        userActivity.isEligibleForSearch = true
//        userActivity.isEligibleForPrediction = true
//        userActivity.title = "My First Activity"
//        userActivity.suggestedInvocationPhrase = "Let's do it"
//
//        return userActivity
//    }
//}
