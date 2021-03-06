//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import Foundation

protocol LoginRouterInput {
    func openCreateAccount(user: User)
    
    func dismiss()
}
