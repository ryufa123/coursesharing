//
//  UsersViewController.swift
//  CourseSharing
//
//  Created by apple for ldh on 2017/12/9.
//  Copyright © 2017年 apple for ldh. All rights reserved.
//

import UIKit

class UsersViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigat ionItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    func imageForRating(rating:Int) -> UIImage?{
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
    
    var users:[Users] = usersData
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return
    }
    override func tableView(tableView: UITableView, numberOfTowsInSection section: Int) -> Int{
        return users.count
    
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Userscell", for: indexPath,
            indexPath)
        let users = user[indexPath.row] as UsersViewController
        if let nameLabel = cell.viewWithTag(100) as? UILabel{
            nameLabel.text = users.name
        }
        if let courseLabel = cell.viewWithTag(101) as? UILabel {
            courseLabel.text = users.course
        }
        if let ratingImageView = cell.viewWithTag(102) as? UILabel{
            ratingImageView.image = self.imageForRating(users.rating)
        }
        

        return cell
    }
    
    @IBAction func cancelToUsersViewcontroller(segue:UIStoryboardSegue){}
    @IBAction func saveUsersDetail(sugue:UIStoryboardSegue){
        if let UsersDetailsViewController = segue.sourceViewController as? UsersViewController{
        //add a new user to the players array
            if let user = UsersDetailsViewController.user{
                users.append(player)
                //update a tableView
                let IndexPath = NSIndexPath(forRow: players.count-1, inSection: 0)
                tableView.insertRowsAtIndexPaths([IndexPath], withRowAnimation: .automatic)
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}

