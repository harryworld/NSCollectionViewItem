//
//  ItemFactory.swift
//  NSCollectionViewItem
//
//  Created by Harry Ng on 8/8/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa
import Foundation

class ItemFactory {

    static let shared = ItemFactory()

    lazy var placeholder: MyItem = self.createItem()

    private func createItem() -> MyItem {

        let item = MyItem(nibName: String(MyItem), bundle: NSBundle.mainBundle())!

        if item.textField == nil {
            for v in item.view.subviews {
                if v.identifier == "TitleField" {
                    item.textField = v as? NSTextField
                }
            }
        }

        return item
    }

}
