//
//  MainWindowController.swift
//  ToDo
//
//  Created by André Simões on 25/01/16.
//  Copyright © 2016 André Simões. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var tableView: NSTableView!
    
    var items = ["Buy garden","Buy new car","Buy house in the hills"]
    
    
    override var windowNibName: String {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    
    @IBAction func createNewItemWithName(sender: NSButton) {
        
        print("Add button clicked")
        
        items.append(textField.stringValue)
        tableView.reloadData()
        
    }
    
    // Mark: - NSTableViewDataSource
    
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return items.count
    }
    
    func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
        
        let item = items[row]
        return item
        
        
    }
    
    
}
