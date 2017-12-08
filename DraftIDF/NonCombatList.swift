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
        
        let unit0 = Unit(image: #imageLiteral(resourceName: "ic_supervisor_account"), title: "Mashakit/Mashak מ״שק/מ״שקית", summary: "Non-Commissioned Officers", description: "A non-commissioned officer that oversees other soldiers and fulfils an official role in each unit. The most common positions are Mashakit Tash, Hinuch, Aliyah, Shalishut, and Hod.")
        let unit1 = Unit(image: #imageLiteral(resourceName: "agafmodiin"), title: "Modiin מודיעין", summary: "Intelligence",description: "A unit responsible for collecting intelligence information for the IDF. The corps also engages in counter-intelligence and information security work, and presents general assessments. It is difficult for non-Israeli born soldiers to get into modiin because of security clearance rules") //image literals
        let unit2 = Unit(image: #imageLiteral(resourceName: "dovertzahal"), title: "Dover Tzahal דובר צהל", summary: "Media Relations", description: "The IDF unit that handles media relations and information policy. They work with domestic and foreign press, managing public relations, publishing social media, and speaking on behalf of the IDF.")
        let unit3 = Unit(image: #imageLiteral(resourceName: "hachimush"), title: "Chimush חימוש", summary: "Technical Engineering",description: "Deals with engineering, repair and ordinates for combat units. They help with maintaining, testing and constructing weapons within the IDF. They have many maintenance bases and are also spread throughout all of the army units.")
        let unit4 = Unit(image: #imageLiteral(resourceName: "hachinuch"), title: "Chinuch חינוך", summary: "Education Corps", description: "This corps of education soldiers is unique to the IDF, the first of its kind in the world. They are responsible for many different areas of education in and outside of the IDF. They run many courses in the IDF, including the Hebrew course for Olim.")
         let unit5 = Unit(image: #imageLiteral(resourceName: "hatikshuv"), title: "Tikshuv תיקשוב", summary: "Communications", description: "This is the communications unit of the IDF, also involved in the training of communications soldiers that will later be placed in many units.")
        let unit6 = Unit(image: #imageLiteral(resourceName: "harefuah"), title: "Refuah רפואה", summary: "Medical Corps", description: "The IDF medical corps operate many medical clinics around the country and on every base. They are also responsible for training combat medics in every unit.")
        
        let unit7 = Unit(image: #imageLiteral(resourceName: "hashlishut"), title: "Shilishut שלישות", summary: "Human Resources", description: "The human relations unit of the IDF. They deal with all aspects of soldiers' information, well being, salary, and placement.")
        
        let unit8 = Unit(image: #imageLiteral(resourceName: "logistica"), title: "Logistica לוגיסטיקה", summary: "Logistical Corps", description: "A combat assistance corps dedicated to supplying goods, food, equipment and technology to units throughout the country. They also train and manage all transportation within the IDF.")
        
        let unit9 = Unit(image: #imageLiteral(resourceName: "cogat"), title: "Matpash מתפש", summary: "Territorial Affairs", description: "Coordinator of Government Affairs in the Territories. They provide communication with people in Yehuda, Shomron, and Gaza. Involved in humanitarian aid and communication with the Palestinian Authority.")
        let unit10 = Unit(image: #imageLiteral(resourceName: "rabbanut"), title: "Rabbanut Hatzvait הרבנות הצבאית", summary: "Military Rabbinate", description: "The Military Rabbinate deals with shabbat, holdiays, kashrut and burial for soldiers in the IDF. They also provide Rabbis on bases and manage all religious affairs within the military.")
        
        let unit11 = Unit(image: #imageLiteral(resourceName: "chutz"), title: "Keshri Chutz קשרי חוץ", summary: "Foreign Relations", description: "The IDF Liaison Unit maintains contact between the IDF, UN and other foreign forces operating under various security arrangements in the region, and from around the world")
        
        let unit12 = Unit(image: #imageLiteral(resourceName: "mishtara"), title: "Mishtara Hatzva'it משטרה הצבאית", summary: "Military Police", description: "It is responsible for various law enforcement duties, including aiding IDF commanders in enforcing discipline, guarding the military prisons, locating deserters, investigating crimes committed by soldiers, and helping man the Israeli checkpoints in the Palestinian territories.")
        
       let unit13 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "Non-Combat Units", summary: "Possible Positions", description: "There are hundreds of other roles for men and women in the IDF not directly having to do with combat units. Still, soldiers in these roles provide a vital service to the functioning of the military. Soldiers still have basic training for 2-3 weeks followed by a specialty course for training in their field which could range from a couple of weeks to several months")
        
        let unit17 = Unit(image: #imageLiteral(resourceName: "woman"), title: "Combat Support Roles", summary: "", description: "There are many support roles within combat units that are filled by both men and women. These are very critical positions that train, guide, assist combat soldiers. ")
        let unit18 = Unit(image: #imageLiteral(resourceName: "gun"), title: "Madrichim/ot מדריכים/ות", summary: "Instructors", description: "There are many different types of instructors (Female and Male) that teach soldiers how to operate weapons, machinery, tanks, and other equipment. Common positions include Chir, Tank, Artillery and more.")
        
        tempUnits.append(unit13) //info
        tempUnits.append(unit11) //kishrei chutz
        tempUnits.append(unit9) //cogat
        tempUnits.append(unit6) //chovesh refua
        tempUnits.append(unit2) //dover
        tempUnits.append(unit3) //chimush
        tempUnits.append(unit4) //chinuch
        tempUnits.append(unit12) //mtz

        tempUnits.append(unit1) //modiin
        tempUnits.append(unit8) //logistica
        tempUnits.append(unit7) //shlishut
        tempUnits.append(unit5)  //tikshuv
        tempUnits.append(unit10) //rab
        tempUnits.append(unit0) //mash
        tempUnits.append(unit17) //extra roles for bottom
        tempUnits.append(unit18)
        
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
