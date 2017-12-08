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
        
        let unit0 = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "חוגרים Chogrim", summary: "", description: "These are the ranks that soldiers during their required service receive based on their service time. They are placed on the uniform sleeves.")
        let rbt = Unit(image: #imageLiteral(resourceName: "rabat"), title: "רב-טוראי (רב\"ט) Rabat", summary: "",description: "Soldiers receive this rank after completing basic training and a fraction of their service (usually 8 months). Combat soldiers (Ground Forces) do not place this rank on their uniforms. Us Army equivalent of Corporal ")
       let sml = Unit(image: #imageLiteral(resourceName: "samal"), title: "סמל Samal", summary: "",description: "Soldiers get this rank usually after a year and a half of service. US Army equivalent of Sergeant")
        let smr = Unit(image: #imageLiteral(resourceName: "samar"), title: "סמל ראשון (סמ\"ר) Samar", summary: "",description: "Soldiers get this rank usually 9 months after getting the Samal rank. US Army equivalent of Staff Sergeant") //image literals
        let nagad = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "נגדים Nagadim", summary: "",description: "These are the ranks that soldiers, who did not pass the Officers course, but sign on for career service (Keva) receive. The ranks are placed on the epaulet of the uniform")
        let rsl = Unit(image: #imageLiteral(resourceName: "rasal"), title: "רב-סמל (רס\"ל) Rasal", summary: "",description: "Soldiers who sign on for career service (Keva) get this rank 2 years after being a Samar. US Army equivalent of Sergeant First Class")
        let rsr = Unit(image: #imageLiteral(resourceName: "rasar"), title: "רב-סמל ראשון (רס\"ר) Rasar", summary: "",description: "This rank is granted after 9 years of being a Rasal. US Army equivalent of Master Sergeant")
        let rsm = Unit(image: #imageLiteral(resourceName: "rasam"), title: "רב-סמל מתקדם (רס\"מ) Rasam", summary: "",description: "This rank is granted after 7 years of being a Rasar. US Army equivalent of Sergeant Major")
        let rsb = Unit(image: #imageLiteral(resourceName: "rasab"), title: "רב-סמל בכיר (רס\"ב) Rasab", summary: "",description: "This rank is granted after 7 years of being a Rasam. US Army equivalent of Command Sergeant Major")
        let rnm = Unit(image: #imageLiteral(resourceName: "ranam"), title: "רב-נגד משנה (רנ\"מ) Ranam", summary: "",description: "This rank is granted after 9 years of being a Rasab. US Army equivalent of Warrant Officer")
        let rng = Unit(image: #imageLiteral(resourceName: "ranag"), title: "רב-נגד (רנ\"ג) Ranag", summary: "",description: "This rank is granted to a limited number of Nagadim, most of whom have held the rank of Ranam for 5 years. This rank is not automatically given after accumulating a seniority like the other ranks, but according to a personal assessment. US Army equivalent of Chief Warrant Officer.")
        
        let katzin = Unit(image: #imageLiteral(resourceName: "ic_info_outline"), title: "קצינים Katzinim", summary: "", description: "These ranks are given to graduates of the Officers Course, or received the rank from the Pilots or the Captains (Chovlim) Courses, respectively. In the Air force, these symbols are colored silver and in the Navy they are gold")
        let sgm = Unit(image: #imageLiteral(resourceName: "sagam"), title: "סגן-משנה (סג\"מ) Sagam", summary: "", description: "Graduate of the Officers Course and finished regular military service. Example: Platoon Leader (מפקד מחלקה (מ\"מ. US army equivalent of Second Lieutenant")
         let sgn = Unit(image: #imageLiteral(resourceName: "segen"), title: "סגן Segen", summary: "", description: "Deputy Squadron/Platoon Leader, Graduate of the Pilots' or Captains' Course. US army equivalent of First Lieutenant")
        let srn = Unit(image: #imageLiteral(resourceName: "seren"), title: "סרן Seren", summary: "", description: "Company Commander, Submarine Platoon Commander, Commander of a Missile Division. US army equivalent of Captain")
        let rsn = Unit(image: #imageLiteral(resourceName: "rasan"), title: "רב סרן (רס\"ן) Rav Seren", summary: "", description: "Deputy Commander of a Battalion, Division or Company Commander. US army equivalent of Major")
        let sgan = Unit(image: #imageLiteral(resourceName: "saal"), title: "סגן-אלוף (סא\"ל) Sgan Aluf", summary: "", description: "Commanding Officer of a Gdud (Battalion), Tayeset, or Shayetet. US army equivalent of Lieutenant Colonel")
        let alm = Unit(image: #imageLiteral(resourceName: "alam"), title: "אלוף משנה (אל\"מ) Aluf Mishnei", summary: "", description: "Commander of a Chativah (Brigade). Being appointed requires the determination of the Ramatkal and authorization of the Minister of Defense. US army equivalent of Colonel")
        let ttalf = Unit(image: #imageLiteral(resourceName: "tataluf"), title: "אלוף משנה (אל\"מ) Tat Aluf", summary: "", description: "Usually Commanding Officer of a Military Base. Being appointed requires the determination of the Ramatkal and authorization of the Minister of Defense. US army equivalent of Brigadier General")
        let alf = Unit(image: #imageLiteral(resourceName: "aluf"), title: "אלוף Aluf", summary: "", description: "Usually the heads of departments have this position, like the Commanding General of a branch of arms (ground force, air force, or navy) or a regional command. Being appointed to this position requires a recommendation from the Ramatkal and approval from the Minister of Defense. US army equivalent of Major General")
        let rmtkl = Unit(image: #imageLiteral(resourceName: "ramatkal"), title: "רב-אלוף (רא\"ל) Rav Aluf", summary: "", description: "Also known as (ראש המטה הכללי (הרָמַטכָּ\"ל Ramatkal. Gadi Eizenkot, is the 50th serving in this position. He reports directly to the Minister of Defense, Avigdor Liberman. Being appointed this position requires a recommendation from the Minister of Defense and approval from the Israeli Government. US army equivalent of Lieutenant General (Chief of General Staff)")
     
        tempUnits.append(unit0)
        
        tempUnits.append(rbt)
        tempUnits.append(sml)
        tempUnits.append(smr)

        tempUnits.append(nagad)
        
        tempUnits.append(rsl)
        tempUnits.append(rsr)
        tempUnits.append(rsm)
        tempUnits.append(rsb)
        tempUnits.append(rnm)
        tempUnits.append(rng)

        tempUnits.append(katzin)
        tempUnits.append(sgm)
        tempUnits.append(sgn)
        tempUnits.append(srn)
        tempUnits.append(rsn)
        tempUnits.append(sgan)
        tempUnits.append(alm)
        tempUnits.append(ttalf)
        tempUnits.append(alf)
        tempUnits.append(rmtkl)

        
        return tempUnits
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueString {
            let descVC = segue.destination as! RanksViewController
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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellString) as! RanksTableViewCell
        
        cell.setUnit(unit: unit)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let unit = units[indexPath.row]
        performSegue(withIdentifier: segueString, sender: unit)
    }
    
}

