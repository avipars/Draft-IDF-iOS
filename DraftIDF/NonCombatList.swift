//
// NonCombatList.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import UIKit

class NonCombatList: UIViewController {
    //video list screen
    
  
    @IBOutlet weak var tblview: UITableView!
    
    var units: [Unit] = [] //init empty array
    
    let segueString = "NonCombatMastertoDetail"
    let cellString = "NonCombatTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        units = createArray() //setting videos to temp array
        self.automaticallyAdjustsScrollViewInsets = false //removes random space
        
               tblview.delegate = self //fire off extensions
               tblview.dataSource = self // no need because set in storyboard
    }
    
    func createArray() -> [Unit] {
        var tempUnits: [Unit] = []
        
        let unit0 = Unit(image: #imageLiteral(resourceName: "ic_supervisor_account"), title: "Mashakiot מ״שקית", summary: "Non-Commisioned Officers", description: "A non-commissioned officer that oversees other soldiers and fulfils an official role in each unit. The most common positions are Mashakit Tash, Hinuch, Aliyah, Shalishut, and Hod.")
        let unit1 = Unit(image: #imageLiteral(resourceName: "agafmodiin"), title: "Agaf Hamodiin אגף המודיעין", summary: "Intelligence",description: "A unit responsible for collecting, disseminating, and publishing intelligence information for the IDF. The corps also engages in counter-intelligence and information security work, and presents general assessments.") //image literals
        let unit2 = Unit(image: #imageLiteral(resourceName: "dovertzahal"), title: "Dover Tzahal דובר צהל", summary: "Media Relations", description: "The IDF unit that handles media relations and information policy. They work with domestic and foreign press, managing public relations, disseminating information, publishing social media, and speaking on behalf of the IDF.")
        let unit3 = Unit(image: #imageLiteral(resourceName: "hachimush"), title: "Chel Hachimush חיל החימוש", summary: "Technical Engineering",description: "Deals with engineering, repair and ordinates for combat units. They help with maintaining, testing and constructing weapons within the IDF. They have many maintenance bases and are also spread throughout combat units.")
        let unit4 = Unit(image: #imageLiteral(resourceName: "hachinuch"), title: "Chel Hachinuch חיל החינוך", summary: "Education Corps", description: "This corps of education soldiers is unique to the IDF, the first of its kind in the world. They are responsible for many different areas of education in and outside of the IDF. They run many courses in the IDF, including the Hebrew course for Olim.")
         let unit5 = Unit(image: #imageLiteral(resourceName: "hatikshuv"), title: "Chel Hatikshuv חיל התיקשוב", summary: "Communications", description: "This is the communications unit of the IDF, mostly involved in the training of communications soldiers that will later be placed in combat units.")
        let unit6 = Unit(image: #imageLiteral(resourceName: "harefuah"), title: "Chel Harefuah חיל הרפואה", summary: "Medical Corps", description: "The IDF medical corps operate many medical clinics around the country and on every base. They are also responsible for training combat medics in every unit.")
        
        let unit7 = Unit(image: #imageLiteral(resourceName: "hashlishut"), title: "Chel Hashilishut חיל השלישות", summary: "Human Resources", description: "The human relations unit of the IDF. They deal with all aspects of soldiers' information, well being, salary, and placement")
        
        let unit8 = Unit(image: #imageLiteral(resourceName: "logistica"), title: "Chel Halogistica חיל הלוגיסטיקה", summary: "Logistical Corps", description: "A combat assistance corps dedicated to supplying goods, food, equipment and technology to units throughout the country. They also train and manage all transportation within the IDF.")
        
        let unit9 = Unit(image: #imageLiteral(resourceName: "cogat"), title: "COGAT קוגט", summary: "Territorial Affairs", description: "Coordinator of Government Affairs in the Territories. They provide communication with people in Yehuda, Shomron, and Gaza. Involved in humanitarian aid and communication with the Palestinian Authority.")
        let unit10 = Unit(image: #imageLiteral(resourceName: "rabbanut"), title: "Rabbanut Hatzvait הרבנות הצבאית", summary: "Military Rabbinate", description: "The Military Rabbinate deals with shabbat, kashrut and burial for soldiers in the IDF. They also provide Rabbis on bases and manage all religious affairs within the military.")
        
        let unit11 = Unit(image: #imageLiteral(resourceName: "chutz"), title: "Keshri Chutz קשרי חוץ", summary: "Foreign Relations", description: "The IDF Liaison Unit maintains contact between the IDF, UN and other foreign forces operating under various security arrangements in the region.")
        
        let unit12 = Unit(image: #imageLiteral(resourceName: "mishtara"), title: "Mishtara Hatzva'it משטרה הצבאית", summary: "Military Police", description: "It is responsible for various law enforcement duties, including aiding IDF commanders in enforcing discipline, guarding the military prisons, locating deserters, investigating crimes committed by soldiers, and helping man the Israeli checkpoints in the Palestinian territories.")
        
       let unit13 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "Other Roles", summary: "Non-Combat Positions", description: "There are hundreds of other roles for men and women in the IDF not directly having to do with combat units. Though sometimes seen as less important, soldiers in these roles provide a vital service to the functioning of the military. Soldiers still have basic training for 2-3 weeks followed by about a 2 month course.")
        
        tempUnits.append(unit1)
        tempUnits.append(unit9) //cogat
        tempUnits.append(unit3) //chimush
        tempUnits.append(unit4)
        tempUnits.append(unit8)
        tempUnits.append(unit6)
        tempUnits.append(unit7)
        tempUnits.append(unit5)
        tempUnits.append(unit2) //dover
        tempUnits.append(unit11)
        tempUnits.append(unit12) //mm z
        tempUnits.append(unit0) //mash
        tempUnits.append(unit10) //rab
        tempUnits.append(unit13)

        
        return tempUnits
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueString {
            let descVC = segue.destination as! NonCombatViewController
            descVC.unit = sender as? Unit // casting
        }
    }
    
}

extension NonCombatList: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count //length
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //where items lie in index
        let unit = units[indexPath.row] //subscripting
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellString) as! NonCombatTableViewCell
        
        cell.setUnit(unit: unit)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let unit = units[indexPath.row]
        performSegue(withIdentifier: segueString, sender: unit)
    }
    
}
