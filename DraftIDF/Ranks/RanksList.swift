//
//  FirstViewController.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//
import UIKit

class RanksList: UIViewController {
    
    @IBOutlet weak var tblview: UITableView!
    
    var units: [Unit] = [] //init empty array
    
    let segueString = "RanksMastertoDetail"
    let cellString = "RanksTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        units = createArray() //setting videos to temp array
        
        self.automaticallyAdjustsScrollViewInsets = false //removes random space
        
        tblview.delegate = self //fire off extensions
        tblview.dataSource = self // no need because set in storyboard
    }
    
    func createArray() -> [Unit] {
        var tempUnits: [Unit] = []
        
        //israeli \("\r\n")
        
        let unit0 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "Combat Units", summary: "", description: "There are many different types of combat units in the IDF, they all have their own specialties. Some of the units are co-ed and some require a gibbush (tryouts). To get into a combat unit you need a profile of at least a 72, although some units require higher.")
        
        let unit1 = Unit(image: #imageLiteral(resourceName: "nahal"), title: "Nahal נחל", summary: "Infantry Corps",description: "Color of Kumta: Light Green\("\r\n")Basic Training Base: Arad Area in the Negev.\("\r\n")Description: Infantry unit defending Israel’s borders and conducting operations in times of need. Profile: 82") //image literals
       
        
        
        tempUnits.append(unit0)
        tempUnits.append(unit1) //nahal
        
        
        return tempUnits
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueString {
            let descVC = segue.destination as! ViewController
            descVC.unit = sender as? Unit // casting
        }
    }
    
}

extension RanksList: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count //length
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //where items lie in index
        let unit = units[indexPath.row] //subscripting
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellString) as! TableViewCell
        
        cell.setUnit(unit: unit)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let unit = units[indexPath.row]
        performSegue(withIdentifier: segueString, sender: unit)
    }
    
}

