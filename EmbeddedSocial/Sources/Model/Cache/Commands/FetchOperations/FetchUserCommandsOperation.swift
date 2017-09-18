//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import Foundation

class FetchUserCommandsOperation: Operation {
    private let cache: CacheType
    
    var commands: [UserCommand] = []
    
    init(cache: CacheType) {
        self.cache = cache
    }
    
    override func main() {
        guard !isCancelled else {
            return
        }
        
        let request = CacheFetchRequest(resultType: OutgoingCommand.self,
                                        predicate: PredicateBuilder.allUserCommandsPredicate(),
                                        sortDescriptors: [Cache.createdAtSortDescriptor])
        
        commands = cache.fetchOutgoing(with: request) as? [UserCommand] ?? []
    }
}