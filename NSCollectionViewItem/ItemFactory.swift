//
//  ItemFactory.swift
//  NSCollectionViewItem
//
//  Created by Harry Ng on 8/8/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Foundation

class ItemFactory {

    static let shared = ItemFactory()

    lazy var placeholder: MyItem = self.createItem()

    private func createItem() -> MyItem {

        let item = MyItem(nibName: String(MyItem), bundle: NSBundle.mainBundle())!

        return item
    }

}
