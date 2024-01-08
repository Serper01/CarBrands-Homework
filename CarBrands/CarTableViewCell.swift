//
//  CarTableViewCell.swift
//  CarBrands
//
//  Created by Serper Kurmanbek on 05.01.2024.
//

import UIKit
import SDWebImage

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var regionLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var flagImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(brands: CarBrands) {
        nameLabel.text = brands.name
        regionLabel.text = brands.region
        locationLabel.text = brands.location
        
        pictureImageView.sd_setImage(with: URL(string: brands.picture), completed: nil)
        flagImageView.sd_setImage(with: URL(string: brands.flag), completed: nil )
        
    }
}
