//
//  AppConfig.swift
//  FoodAndFitness
//
//  Created by Mylo Ho on 3/7/16.
//  Copyright © 2016 SuHoVan. All rights reserved.
//

import Foundation
import SwiftDate

// #if (arch(i386) || arch(x86_64)) && os(iOS)

final class App {
    static let name = "FoodAndFitness"
    static let code = "FF"
}

final class Key {
    static let appVersion = "AppVersion"
    static let appBuild = "AppBuild"
    static let apiPathBaseURL = "ApiPathBaseURL"
    static let deviceToken = "DeviceToken"
    static let timeInterval = "TimeInterval"
    static let userId = "UserID"
    static let uId = "uid"
    static let accessToken = "AccessToken"
    static let client = "client"
}

enum NotificationName: String {
    case uploadPhoto = "UploadPhoto"

    var toNotiName: NSNotification.Name {
        switch self {
        case .uploadPhoto:
            return NSNotification.Name(self.rawValue)
        }
    }
}

final class Google {
    static let apiKey = "AIzaSyBOOPbUYQMHXrSbgmSeeJBdm-pr7nGrEpc"
}

let serialQueue: OperationQueue = {
    let queue = OperationQueue()
    queue.maxConcurrentOperationCount = 1
    return queue
}()

let concurQueue: OperationQueue = {
    let queue = OperationQueue()
    queue.maxConcurrentOperationCount = 6
    return queue
}()
