//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import Foundation


/** Request to post (create) topic */
open class PostTopicRequest: JSONEncodable {
    public enum PublisherType: String { 
        case user = "User"
        case app = "App"
    }
    public enum BlobType: String { 
        case unknown = "Unknown"
        case image = "Image"
        case video = "Video"
        case custom = "Custom"
    }
    /** Gets or sets publisher type */
    public var publisherType: PublisherType?
    /** Gets or sets topic title */
    public var title: String?
    /** Gets or sets topic text */
    public var text: String?
    /** Gets or sets topic blob type */
    public var blobType: BlobType?
    /** Gets or sets topic blob handle */
    public var blobHandle: String?
    /** Gets or sets topic categories */
    public var categories: String?
    /** Gets or sets topic language */
    public var language: String?
    /** Gets or sets topic deep link */
    public var deepLink: String?
    /** Gets or sets topic friendly name */
    public var friendlyName: String?
    /** Gets or sets topic group */
    public var group: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["publisherType"] = self.publisherType?.rawValue
        nillableDictionary["title"] = self.title
        nillableDictionary["text"] = self.text
        nillableDictionary["blobType"] = self.blobType?.rawValue
        nillableDictionary["blobHandle"] = self.blobHandle
        nillableDictionary["categories"] = self.categories
        nillableDictionary["language"] = self.language
        nillableDictionary["deepLink"] = self.deepLink
        nillableDictionary["friendlyName"] = self.friendlyName
        nillableDictionary["group"] = self.group
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
