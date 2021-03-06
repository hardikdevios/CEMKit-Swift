//
//  BlockLongPress.swift
//  
//
//  Created by Cem Olcay on 12/08/15.
//
//

import UIKit

class BlockLongPress: UILongPressGestureRecognizer {
    
    private var longPressAction: ((UILongPressGestureRecognizer) -> Void)?
    
    override init(target: AnyObject, action: Selector) {
        super.init(target: target, action: action)
    }
    
    convenience init (action: ((UILongPressGestureRecognizer) -> Void)?) {
        self.init()
        longPressAction = action
        addTarget(self, action: "didLongPressed:")
    }
    
    func didLongPressed (longPress: UILongPressGestureRecognizer) {
        longPressAction? (longPress)
    }
}
