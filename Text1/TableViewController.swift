//
//  TableViewController.swift
//  Text1
//
//  Created by Seth Du on 15/8/15.
//  Copyright © 2015年 Seth Du. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var photo = [photodata]()
    func LoadSampleImage (){
        let photo1 = UIImage(named: "Photo1")!
        let meal1 = photodata(name: "Billy", photo: photo1, rate: 4)!
        
        let photo2 = UIImage(named: "Photo2")!
        let meal2 = photodata(name: "Whatever1", photo: photo2, rate: 5)!
        
        let photo3 = UIImage(named: "Photo3")!
        let meal3 = photodata(name: "Whatever2", photo: photo3, rate: 3)!
        
        photo += [meal1,meal2,meal3]
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        LoadSampleImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "photocell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)  as! TableViewCell
        let photodata2 = photo[indexPath.row]
        cell.photoname.text = photodata2.name
        cell.photoimage.image = photodata2.photo
        cell.photorating.rating = photodata2.rate
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
