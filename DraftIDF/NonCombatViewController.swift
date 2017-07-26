//
//  NonCombatViewController.swift
//  DraftIDF
//
//  Created by Avi Parshan on 7/3/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import UIKit

class NonCombatViewController: UIViewController {

    
    // @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titl: UILabel!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var summ: UILabel!
    
    var unit: Unit? //accept video form masterview
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        desc.sizeToFit()

    }
    
    func setUI() //passing data based on cell pic
    {
        img.image = unit?.image
        desc.text = unit?.description
        titl.text = unit?.title
        summ.text = unit?.summ
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
