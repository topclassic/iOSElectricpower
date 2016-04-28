//
//  MainpagesController.swift
//  iOSDataChart
//
//  Created by Chotipat on 4/23/2559 BE.
//  Copyright © 2559 Chotipat. All rights reserved.
//

import UIKit
import RealmSwift

class EditNameController: UITableViewController{
    
    var imageImages = UIImage(named: "tool")
    
    @IBAction func refresh(sender: AnyObject) {
        get()
    }
    var values:NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        get();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func get(){
        let url = NSURL(string: "http://topelectirc.azurewebsites.net/showsetname.php")
        let data = NSData(contentsOfURL: url!)
        values = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSArray
        tableView.reloadData()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = self.tableView.dequeueReusableCellWithIdentifier("EditNameCell", forIndexPath: indexPath) as! EditNameCell
        let maindata = values[indexPath.row]
        cell.OutletID.text = "Outlet ID: "+(maindata["outlet_id"] as? String)!
        cell.OutletName.text = "Outlet Name: "+(maindata["outlet_name"] as? String)!
        cell.ImageView.image = imageImages
        return cell;
    }
    
}
