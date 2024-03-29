//
//  FirstViewController.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//
import UIKit

class CombatList: UIViewController {
    
    @IBOutlet weak var tblview: UITableView!

    var units: [Unit] = [] //init empty array
    
    let segueString = "MastertoDetail"
    let cellString = "TableViewCell"
    
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
    let unit2 = Unit(image: #imageLiteral(resourceName: "givati"), title: "Givati גבעתי", summary: "Infantry", description: "Color of Kumta: Purple\("\r\n")Basic Training Base: Negev\("\r\n")Description: Infantry unit defending Israel’s borders and conducting operations in times of need. Profile: 82")
    let unit3 = Unit(image: #imageLiteral(resourceName: "golani"), title: "Golani גולני", summary: "Infantry", description: "Color of Kumta: Brown\("\r\n")Basic Training Base: Golan\("\r\n")Description: Infantry unit defending Israel’s borders and conducting operations in times of need. Profile: 82")
      let unit4 = Unit(image: #imageLiteral(resourceName: "tzanchanim"), title: "Tzanchanim צנחנים", summary: "Paratroopers", description: "Color of Kumta: Red\("\r\n")Basic Training Base: Negev\("\r\n")Description: Paratrooper unit defending Israel’s borders and conducting operations in times of need. Profile: 82 (Gibbush Needed)")
    let unit5 = Unit(image: #imageLiteral(resourceName: "magav"), title: "Mishmar Hagvul משמר הגבול", summary: "Military Police", description: "Color of Kumta: Dark Green\("\r\n")Basic Training Base: Jerusalem Region\("\r\n")Description: A border police unit that protects within Israel, the West Bank and Jerusalem. Deals with counterterrorism, law enforcement, and riot control. Women are in high demand and are often used to search women crossing borders. Profile: 82")
    let unit6 = Unit(image: #imageLiteral(resourceName: "totchanim"), title: "Totchanim תותחנים", summary: "Artillery",description: "Color of Kumta: Turquoise\("\r\n")Basic Training Base: Southern Negev\("\r\n")Description: Artillery unit defending Israel’s borders and conducting operations in times of need. Includes elite missile units and advanced drone unit. Profile: 72")
    let unit7 = Unit(image: #imageLiteral(resourceName: "shiryon"), title: "Shiryon שריון", summary: "Tanks Unit", description: "Color of Kumta: Black\("\r\n")Basic Training Base: Shizafon (Southern Negev)\("\r\n")Description: Armored Unit (Merkava Tanks) defending Israel’s borders and conducting operations in times of need. Profile: 72")
    let unit8 = Unit(image: #imageLiteral(resourceName: "kfir"), title: "Kfir כפיר", summary: "Infantry", description: "Color of Kumta: Camouflage\("\r\n")Basic Training Base: Northern Jordan Valley\("\r\n")Description: Infantry unit defending Israel’s borders and conducting operations in times of need. Minimum Profile: 82")
    let unit9 = Unit(image: #imageLiteral(resourceName: "isufkravi"), title: "Isuf Kravi איסוף קרבי", summary: "Combat Intelligence", description: "Color of Kumta: Yellow\("\r\n")Basic Training Base: Southern Negev\("\r\n")Description: Field intelligence and recon unit gathering information close to and behind enemy lines. Minimum Profile: 82")
    let unit10 = Unit(image: #imageLiteral(resourceName: "arayothayarden"), title: "Arayot Hayarden אריות הירדן", summary: "Infantry", description: "Color of Kumta: Light Green\("\r\n")Basic Training Base: Binyamina Area\("\r\n")Description: Co-ed infantry unit defending Israel’s borders and conducting operations in times of need. Minimum Profile: 82")
    let unit21 = Unit(image:#imageLiteral(resourceName: "bardelas"), title: "Bardelas לוחם ברדלס", summary: "Infantry Corps",description: "Color of Kumta: Light Green\("\r\n")Basic Training Base: Binyamina Area\("\r\n")Description: Infantry unit defending Israel's Borders and conducting operations in times of need/ Profile 82 Co-ed Unit")
    let unit20 = Unit(image: #imageLiteral(resourceName: "oz"), title: "Oz עוז", summary: "Infantry Corps", description: "Color of Kumta: Red, Brown and Purple\("\r\n")Description: The newest brigade made up of only special forces such as Rimon, Maglan, Egoz and Duvdevan. See Elite Units Tab for more details. Profile: 97 (Gibbush Needed)")
    let unit11 = Unit(image: #imageLiteral(resourceName: "handasahkravi"), title: "Handassa Kravit הנדסה קרבית", summary: "Combat Engineering", description: "Color of Kumta: Silver Grey\("\r\n")Basic Training Base: Arava (Southern Negev)\("\r\n")Description: Combat engineering unit specializing in explosives, road breaching, defense and fortifications, breaching minefields, and tunnel warfare. Profile: 82")
    let unit12 = Unit(image: #imageLiteral(resourceName: "karkal"), title: "Karakal קרקל", summary: "Infantry Corps", description: "Color of Kumta: Light Green\("\r\n")Basic Training Base: Western Negev (near Egyptian border)\("\r\n")Description: This Co-ed unit is fdefending Israel’s (egyptian) borders and conducting operations in times of need. Profile: 82")
    let unit13 = Unit(image: #imageLiteral(resourceName: "chelhaavir"), title: "Hagana Avirit הגנה אווירית", summary: "Air Force", description: "Color of Kumta: Grey\("\r\n")Training Base: Hatzerim Airbase, Northern Negev\("\r\n")Description: Protecting Israel from aerial attack, conducting aerial missions and defending the borders. They offer many combat positions from Pilots, UAV Operators, Missile Defense, and Infantry. Minimum Required Profile: Ranges from 72 - 97")
    let unit14 = Unit(image: #imageLiteral(resourceName: "chelhayam"), title: "Snapir/Chovlim סנפיר/חובלים", summary: "Navy", description: "Color of Kumta: Navy Blue\("\r\n")Training Base: Haifa, Eilat, and Ashdod\("\r\n")Description: The navy's primary objectives are to defend and protect Israel from threats emanating from the sea, to warn of impending warfare and to achieve the goals set by the IDF during warfare. There are many positions for combat soldiers on ships. Profile: 82")
    let unit15 = Unit(image: #imageLiteral(resourceName: "pikkud"), title: "Chilutz Ve'Hazala חילוץ והצלה", summary: "Home Front Command", description: "Color of Kumta: Orange\("\r\n")Basic Training Base: Central Israel\("\r\n")Description: Dealing with civilians and overall safety during times of war and natural disasters. They have many duties, including search and rescue. Profile: 72")
    let unit16 = Unit(image: #imageLiteral(resourceName: "lechima"), title: "Lechima Electronit לחימה אלקטרונית", summary: "Cyber Warfare", description: "Color of Kumta: Black\("\r\n")Basic Training Base: Central Israel\("\r\n")Description: Combat soldiers in cyber warfare positions. They operate both in and out of the field. Special application must be submitted three months prior to drafting. Profile: 72")
   
    
    tempUnits.append(unit0)
    tempUnits.append(unit1) //nahal
    tempUnits.append(unit3) //golani
    tempUnits.append(unit2) //givati
    tempUnits.append(unit8) //kfir
    tempUnits.append(unit4) //tzanchanim
    tempUnits.append(unit20) //stuck in OZ
    tempUnits.append(unit11) // handasah kravit
    tempUnits.append(unit16) //lechima
    tempUnits.append(unit6) //totchanim
    tempUnits.append(unit7) //shiryon
    tempUnits.append(unit15) //palchatz
    tempUnits.append(unit9) //issuf kravi
    tempUnits.append(unit21) //stuck in bardelas

    tempUnits.append(unit10) //arayot hayarden
    tempUnits.append(unit12) //karkal
    tempUnits.append(unit5) //magav

    
    tempUnits.append(unit13) //haavir
    tempUnits.append(unit14) //hayam
    
    return tempUnits
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueString {
            let descVC = segue.destination as! ViewController
            descVC.unit = sender as? Unit // casting
        }
    }

}

extension CombatList: UITableViewDelegate, UITableViewDataSource
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
