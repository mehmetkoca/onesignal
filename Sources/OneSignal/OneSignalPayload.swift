//
//  OneSignalPayload.swift
//  OneSignal
//
//  Created by Anthony Castelli on 9/5/18.
//

import Foundation
import Vapor

public struct OneSignalPayload: Content {
    enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case playerIds = "include_player_ids"
        case iosDeviceTokens = "include_ios_tokens"
        case externalUserIds = "include_external_user_ids"

        case contents = "contents"
        case headings = "headings"
        case subtitle = "subtitle"
        
        case category = "ios_category"
        
        case sound = "ios_sound"
        case sendAfter = "send_after"
        case additionalData = "data"
        case attachments = "ios_attachments"
        
        case contentAvailable = "content_available"
        case mutableContent = "mutable_content"
    }
    
    public var appId: String

    public var playerIds: [String]
    public var iosDeviceTokens: [String]?
    public var externalUserIds: [String]?

    public var contents: [String: String]
    
    public var headings: [String: String]?
    public var subtitle: [String: String]?
    
    public var category: String?
    public var sound: String?
    public var sendAfter: String?
    public var additionalData: [String : String]?
    public var attachments: [String : String]?
    
    public var contentAvailable: Bool?
    public var mutableContent: Bool?
}

