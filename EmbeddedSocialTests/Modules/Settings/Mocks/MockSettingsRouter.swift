//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import Foundation
@testable import EmbeddedSocial

final class MockSettingsRouter: SettingsRouterInput {
    private(set) var openBlockedListCount = 0
    
    func openBlockedList() {
        openBlockedListCount += 1
    }
    
    
    // MARK: - openLinkedAccounts
    
    var openLinkedAccountsCalled = false
    var openLinkedAccountsInputSessionToken: String?
    
    func openLinkedAccounts(sessionToken: String) {
        openLinkedAccountsCalled = true
        openLinkedAccountsInputSessionToken = sessionToken
    }
    
    // MARK: - openLink

    func openLink(type: SettingsLinkRouter) {
        
    }
}
