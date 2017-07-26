//
//  CommandoList.swift
//  DraftIDF
//
//  Created by Avi Parshan on 7/2/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//
//
//  FirstViewController.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import UIKit

class CommandoList: UIViewController {
    //video list screen
    
    
    @IBOutlet var tblView: UITableView!
    var units: [Unit] = [] //init empty array
    
    let segueString = "CommandoMastertoDetail" //change segue
    let cellString = "CommandoTableViewCell" //leave this
    
    override func viewDidLoad() {
        super.viewDidLoad()
        units = createArray() //setting videos to temp array
        
        self.automaticallyAdjustsScrollViewInsets = false //removes random space
        
                tblView.delegate = self //fire off extensions
                tblView.dataSource = self // no need because set in storyboard
    }
    
    func createArray() -> [Unit] {
        var tempUnits: [Unit] = []
        
        
        //Sample
//         let unit0 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "Special Forces", summary: "Summary", description: "Description")
        let unit0 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "Special Forces", summary: "",description: "The following units are some of the most elite in the world. Their training is long and very intense, only for the best of the best. It is rare that a Lone Soldier passes all the requirments to join these units and complete training. A very high level of Hebrew is required as well.") //image literals
        let unit1 = Unit(image: #imageLiteral(resourceName: "matkal"), title: "Matkal מטכ״ל", summary: "Advanced Recon",description: "Top intelligence unit in the IDF, tasked with field intelligence-gathering, deep reconnaissance, counter-terrorism and hostage rescue") //image literals
        let unit2 = Unit(image: #imageLiteral(resourceName: "shayetet13"), title: "Shayetet 13 שייטת", summary: "Navy Seals", description: "Top unit of the Israeli Navy. They specialize in sea-to-land incursions, counter-terrorism, sabotage, maritime intelligence-gathering, maritime hostage rescue, and vessel boarding.")
        let unit3 = Unit(image: #imageLiteral(resourceName: "unit669"), title: "Unit 669 יחידת", summary: "Search and Rescue", description: "The IDF's primary combat rescue unit. Tasked with airborne rescue and extraction of soldiers. Provides support for the most elite units.")
        let unit4 = Unit(image: #imageLiteral(resourceName: "maglan"), title: "Maglan מגלן", summary: "Special Ops", description: "An elite unit which specializes in operating behind enemy lines and deep within enemy territory using advanced technologies and weaponry.")
        let unit5 = Unit(image: #imageLiteral(resourceName: "duvdevan"), title: "Duvdevan דובדבן", summary: "Counter Terrorism",description: "The spearhead of Israeli counter terror operations. They are particularly noted for conducting undercover operations against militants in urban areas.")
        let unit6 = Unit(image: #imageLiteral(resourceName: "yahalom"), title: "Yahalom יהל\"ם", summary: "Special Ops Engineering", description: "Specializes in commando and counter-terrorism missions, demolitions, defusing bombs, landmines and unexploded ordnance, maritime sabotage and obstacle breaching, and searching and destroying smuggling tunnels.")
        let unit7 = Unit(image: #imageLiteral(resourceName: "lotar"), title: "Lotar לוטר", summary: "Counter Terrorism", description: "A counter-terrorism and hostage rescue unit. Soldiers are specialized in facing terror acts. They start their training with Kfir and after completing their basic training they continue to do unique advanced training . Profile: 82+")
        let unit8 = Unit(image: #imageLiteral(resourceName: "rimon"), title: "Rimon רימון", summary: "Recon", description: "A unit whose primary mission is to thwart terrorist activities in the south of Israel, both in urban Gazan settings and in the open desert. The unit's primary mission is to thwart all terrorist activities in the region.")
        let unit9 = Unit(image: #imageLiteral(resourceName: "egoz"), title: "Egoz אגוז", summary: "Recon", description: "An elite unit which specializes in both guerrilla and anti-guerrilla warfare, and more advanced ground-forces activity.")
        let unit10 = Unit(image: #imageLiteral(resourceName: "oketz"), title: "Oketz עוקץ", summary: "K-9 Unit", description: "This elite unit which operates throughout the country and with other IDF units. Combat soldiers are paired with specially trained dogs, used to find terrorists, drugs, and explosives. Women can be combat soldiers assigned to a specific dog and are often are often assigned to other units when said units are in need of their specialist skills, for example, the extraction of terrorists from fortified buildings.")
        let unit11 = Unit(image: #imageLiteral(resourceName: "palzar7"), title: "Palsar 7 פלס״ר", summary: "Recon", description: "An elite recon and anti-terror unit for the Armored Corps.")
        let unit12 = Unit(image: #imageLiteral(resourceName: "gasdargolani"), title: "Gasdar Golani גדס״ר גולני", summary: "Specialized Combat", description: "Each Gadsar is made up of three specialized Plugot (companies): Demolitions and combat engineering (Plugat Habalah Handasit, or Palhan), Recon and anti-terror (Plugat Siyur, Palsar) and Anti-Tank (Pluga Neged Tankim, or Orev).")
        let unit13 = Unit(image: #imageLiteral(resourceName: "gasdarnahal"), title: "Gasdar Nachal גדס״ר נחל", summary: "Specialized Combat", description: "Each Gadsar is made up of three specialized Plugot (companies): Demolitions and combat engineering (Plugat Habalah Handasit, or Palhan), Recon and anti-terror (Plugat Siyur, Palsar) and Anti-Tank (Pluga Neged Tankim, or Orev).")
         let unit14 = Unit(image: #imageLiteral(resourceName: "gasdartzanchanim"), title: "Gasdar Tzanchanim גדס״ר צנחנים", summary: "Specialized Combat", description: "Each Gadsar is made up of three specialized Plugot (companies): Demolitions and combat engineering (Plugat Habalah Handasit, or Palhan), Recon and anti-terror (Plugat Siyur, Palsar) and Anti-Tank (Pluga Neged Tankim, or Orev).")
        let unit15 = Unit(image: #imageLiteral(resourceName: "gasdargivati"), title: "Gasdar Givati גדס״ר גבעתי", summary: "Specialized Combat", description: "Each Gadsar is made up of three specialized Plugot (companies): Demolitions and combat engineering (Plugat Habalah Handasit, or Palhan), Recon and anti-terror (Plugat Siyur, Palsar) and Anti-Tank (Pluga Neged Tankim, or Orev).")
        let unit16 = Unit(image: #imageLiteral(resourceName: "shaldag"), title: "Shaldag שלדג", summary: "Recon", description: "Shaldag's mission is to deploy undetected into combat and hostile environments to conduct special reconnaissance and establish assault zones or airfields, while simultaneously conducting air traffic control and commando actions.")
        
        
        tempUnits.append(unit0) //info
        tempUnits.append(unit5)
        tempUnits.append(unit9)
        tempUnits.append(unit12)
        tempUnits.append(unit13)
        tempUnits.append(unit14)
        tempUnits.append(unit15)
        tempUnits.append(unit7)
        tempUnits.append(unit4)

        tempUnits.append(unit1)
        tempUnits.append(unit10)
        tempUnits.append(unit11)
        tempUnits.append(unit8) //rimon
        tempUnits.append(unit16)
//shalfdag here
        tempUnits.append(unit2) //shayetet
        tempUnits.append(unit3)
        tempUnits.append(unit6)
  
      


        return tempUnits
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueString {
            let descVC = segue.destination as! CommandoViewController //change view controller each time
            descVC.unit = sender as? Unit // casting
        }
    }
    
}

extension CommandoList: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return units.count //length
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //where items lie in index
        let unit = units[indexPath.row] //subscripting
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellString) as! CommandoTableViewCell
        //only change cell string
        
        cell.setUnit(unit: unit)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let unit = units[indexPath.row]
        performSegue(withIdentifier: segueString, sender: unit)
    }
    
}
