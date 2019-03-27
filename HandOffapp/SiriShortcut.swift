//
//  SiriShortcut.swift
//  HandOffapp
//
//  Created by 渡邉 風基 on 2019/03/26.
//  Copyright © 2019 Fuki Watanabe. All rights reserved.
//

import Foundation
import Intents

class SiriShortcut {
    static func createActivity(activityType: String,
                               title: String,
                               keywords: Set<String> = [],
                               contentDescription: String = "",
                               suggestedInvocationPhrase: String = "") -> NSUserActivity {
        // NSUserActivityを作成して付帯情報を設定
        let activity = NSUserActivity(activityType: activityType)
        activity.title = title
        activity.keywords = keywords
        
//        let searchItemAttributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeItem as String)
//        searchItemAttributeSet.title = title
//        searchItemAttributeSet.contentDescription = contentDescription
//        activity.contentAttributeSet = searchItemAttributeSet
        
        // Spotlight検索とSiri Shortcutsを有効化
        activity.isEligibleForSearch = true
        if #available(iOS 12.0, *) {
            activity.isEligibleForPrediction = true
            activity.persistentIdentifier = activityType
            activity.suggestedInvocationPhrase = suggestedInvocationPhrase
        }
        return activity
    }

}
