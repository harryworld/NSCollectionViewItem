//
//  ViewController.swift
//  NSCollectionViewItem
//
//  Created by Harry Ng on 8/8/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var collectionView: NSCollectionView! {
        didSet {
            collectionView.dataSource = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let layout = MyFlowLayout()
        layout.itemSize = NSSize(width: 248, height: 50)
        collectionView.collectionViewLayout = layout
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func createPlaceholder(sender: AnyObject) {

        let item = ItemFactory.shared.placeholder
        item.configure(title: "ABC")

        print(item.textField?.stringValue) // Prints nil
    }

}

extension ViewController: NSCollectionViewDataSource {

    func collectionView(collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(collectionView: NSCollectionView, itemForRepresentedObjectAtIndexPath indexPath: NSIndexPath) -> NSCollectionViewItem {

        let item = collectionView.makeItemWithIdentifier(String(MyItem), forIndexPath: indexPath) as! MyItem
        item.configure(title: "MyItem")

        return item
    }

}
