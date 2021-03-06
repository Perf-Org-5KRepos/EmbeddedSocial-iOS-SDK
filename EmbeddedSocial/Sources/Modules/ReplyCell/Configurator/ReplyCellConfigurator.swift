//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import UIKit

class ReplyCellModuleConfigurator {


    @discardableResult func configure(cell: ReplyCell?,
                                      reply: Reply,
                                      navigationController: UINavigationController?,
                                      moduleOutput: ReplyCellModuleOutput? = nil,
                                      myProfileHolder: UserHolder? = SocialPlus.shared) -> ReplyCellModuleInput {
        
        let router = ReplyCellRouter()
        router.navigationController = navigationController
        
        let strategy = CommonAuthorizedActionStrategy(loginParent: navigationController)
        let presenter = ReplyCellPresenter(actionStrategy: strategy)
        presenter.view = cell
        presenter.router = router
        presenter.reply = reply
        presenter.moduleOutput = moduleOutput
        presenter.myProfileHolder = myProfileHolder
        
        let interactor = ReplyCellInteractor()
        interactor.output = presenter
        interactor.likeService = LikesService()
        
        presenter.interactor = interactor
        router.postMenuModuleOutput = presenter
        router.moduleInput = presenter
        cell?.output = presenter
        
        cell?.configure(reply: reply)
        
        return presenter
    }

}
