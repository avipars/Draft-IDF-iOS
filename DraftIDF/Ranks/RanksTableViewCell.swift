//
//  RanksTableViewCell.swift
//  DraftIDF
//
//  Created by Avi Parshan on 12/8/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.


//
//  TableViewCell.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import UIKit

class RanksTableViewCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var desc: UILabel!
    
    func setUnit(unit: Unit){
        
        img.image = unit.image
        title.text = unit.title
        desc.text = unit.description
    }
    
}
