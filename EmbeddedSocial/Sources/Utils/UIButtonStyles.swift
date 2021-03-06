//
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See LICENSE in the project root for license information.
//

import UIKit

extension UIButton {
    
    struct Style {
        let title: String?
        let backgroundColor: UIColor?
        let tintColor: UIColor
        let titleColor: UIColor
        let titleFont: UIFont
        let borderColor: UIColor?
        let borderWidth: CGFloat
        let cornerRadius: CGFloat
        
        init(title: String?, backgroundColor: UIColor?, tintColor: UIColor, titleColor: UIColor,
             titleFont: UIFont, borderColor: UIColor?, borderWidth: CGFloat, cornerRadius: CGFloat) {
            self.title = title
            self.backgroundColor = backgroundColor
            self.tintColor = tintColor
            self.titleColor = titleColor
            self.titleFont = titleFont
            self.borderColor = borderColor
            self.borderWidth = borderWidth
            self.cornerRadius = cornerRadius
        }
    }
}

extension UIButton.Style {
    
    static var follow: UIButton.Style {
        return UIButton.Style(title: L10n.Common.follow.uppercased(),
                              backgroundColor: .clear,
                              tintColor: AppConfiguration.shared.theme.palette.accent,
                              titleColor:AppConfiguration.shared.theme.palette.accent,
                              titleFont: AppFonts.small,
                              borderColor: AppConfiguration.shared.theme.palette.accent,
                              borderWidth: 1.0,
                              cornerRadius: 8.0)
    }
    
    static var pending: UIButton.Style {
        return UIButton.Style(title: L10n.Common.pending.uppercased(),
                              backgroundColor: .clear,
                              tintColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              titleColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              titleFont: AppFonts.small,
                              borderColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              borderWidth: 1.0,
                              cornerRadius: 8.0)
    }
    
    static var following: UIButton.Style {
        return UIButton.Style(title: L10n.Common.following.uppercased(),
                              backgroundColor: AppConfiguration.shared.theme.palette.accent,
                              tintColor: AppConfiguration.shared.theme.palette.accent,
                              titleColor: AppConfiguration.shared.theme.palette.controlHighlightedTitle,
                              titleFont: AppFonts.small,
                              borderColor: nil,
                              borderWidth: 0.0,
                              cornerRadius: 8.0)
    }
    
    static var unblock: UIButton.Style {
        return UIButton.Style(title: L10n.Common.unblock.uppercased(),
                              backgroundColor: .clear,
                              tintColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              titleColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              titleFont: AppFonts.small,
                              borderColor: AppConfiguration.shared.theme.palette.controlUnhighlighted,
                              borderWidth: 1.0,
                              cornerRadius: 8.0)
    }
}

extension UIButton {
    
    func apply(style: Style) {
        backgroundColor = style.backgroundColor
        tintColor = style.tintColor
        titleLabel?.font = style.titleFont
        
        setTitle(style.title, for: .normal)
        setTitleColor(style.titleColor, for: .normal)
        
        layer.borderColor = style.borderColor?.cgColor
        layer.borderWidth = style.borderWidth
        layer.cornerRadius = style.cornerRadius
    }
}
