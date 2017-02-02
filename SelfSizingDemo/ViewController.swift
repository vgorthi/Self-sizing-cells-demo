//
//  ViewController.swift
//  SelfSizingDemo
//
//  Created by Pavan Krishna on 4/9/16.
//  Copyright (c) 2016. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var hotels:[String: String] = ["The Grand Del Mar The Grand Del Mar The Grand Del Mar The Grand Del Mar": "5300 Grand Del Mar Court, San Diego, CA 92130,73 Prossers Road, Richmond, Clarence 73 Prossers Road, Richmond, Clarence 73 Prossers Road, Richmond, Clarence 73 Prossers Road, Richmond, Clarence 73 Prossers Road, Richmond, Clarence",
                                    "French Quarter Inn": "166 Church St, Charleston, SC 29401",
                                    "Bardessono": "6526 Yount Street, Yountville, CA 94599",
                                    "Hotel Yountville": "6462 Washington Street, Yountville, CA 94599",
                                    "Islington Hotel": "321 Davey Street, Hobart, Tasmania 7000, Australia",
                                    "The Henry Jones Art Hotel": "25 Hunter Street, Hobart, Tasmania 7000, Australia",
                                    "Clarion Hotel City Park Grand": "22 Tamar Street, Launceston, Tasmania 7250, Australia",
                                    "Quality Hotel Colonial Launceston": "31 Elizabeth St, Launceston, Tasmania 7250, Australia",
                                    "Premier Inn Swansea Waterfront": "Waterfront Development, Langdon Rd, Swansea SA1 8PL, Wales",
                                    "Hatcher's Manor": "73 Prossers Road, Richmond, Clarence, Tasmania 7025, Australia"]
    
    var hotelNames:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hotelNames = [String](hotels.keys)

        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableViewAutomaticDimension

    }

//    override func viewDidAppear(animated: Bool) {
//    
//        tableView.reloadData()
//    
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! CustomTableViewCell
        
        let hotelName = hotelNames[indexPath.row]
        cell.nameLabel.text = hotelName
        cell.addressLabel.text = hotels[hotelName]
        
        return cell
    }
}

