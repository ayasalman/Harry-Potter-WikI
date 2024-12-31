//
//  CharactersTableViewCell.swift
//  HarryPotterWIKI
//
//  Created by Aya on 29/12/2024.
//

import UIKit

class CharactersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var characterImage: UIImageView!
    
    @IBOutlet weak var charcterName: UILabel!
    
    @IBOutlet weak var characterSort: UILabel!
    
    @IBOutlet weak var charcterDateOfBirth: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func setUpCell(image : UIImage, name : String, sort: String, birthDate : String)
    {
        characterImage.image = image
        charcterName.text = name
        characterSort.text = sort
        charcterDateOfBirth.text = birthDate
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
