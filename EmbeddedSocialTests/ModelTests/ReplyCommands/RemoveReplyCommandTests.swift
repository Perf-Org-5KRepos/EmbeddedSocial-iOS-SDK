//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//


import XCTest
@testable import EmbeddedSocial

class RemoveReplyCommandTests: XCTestCase {
    
    func testThatItReturnsCorrectInverseCommand() {
        // given
        let reply = Reply(replyHandle: UUID().uuidString)
        let cmd = RemoveReplyCommand(reply: reply)
        guard let inverseCmd = cmd.inverseCommand as? CreateReplyCommand else {
            XCTFail()
            return
        }
        XCTAssertEqual(cmd.reply, inverseCmd.reply)
    }
    
}
