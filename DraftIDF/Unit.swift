//
//  Video.swift
//  DraftIDF
//
//  Created by Avi Parshan on 6/27/17.
//  Copyright © 2017 Lone Soldier Center. All rights reserved.
//

import Foundation
import UIKit

class Unit {
    
    var image: UIImage
    var title: String //Unit Title en + he
    var summ: String // Unit short summary in english
    var description: String // long description in hebrew
    
    init(image: UIImage, title: String, summary: String, description: String)
    {
        self.image = image
        self.title =  title
        self.summ = summary
        self.description = description
    }
}
