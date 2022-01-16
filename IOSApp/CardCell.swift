//
//  CardCell.swift
//  IOSApp
//
//  Created by Anca Dreghiciu on 11/10/21.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var descriptionView: UILabel!
    @IBOutlet weak var pictureView: UIImageView!
    
    
    @IBOutlet weak var cardCryptoBiew: UIView!
    @IBOutlet weak var imageContact: UIImageView!
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var numberContact: UILabel!
    
    func configure(picture: UIImage, title: String, description: String){
        
        titleView.text = title
        titleView.textColor = .black
        descriptionView.text = description
        descriptionView.textColor = .black
        pictureView.image = picture
        pictureView.contentMode = .scaleAspectFill
        cardView.backgroundColor = .white
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 2.0
        
    }
    
    func configureCryptoCard(picture: UIImage, name: String, number: String)
    {
        nameContact.text = name
        nameContact.textColor = .black
        numberContact.text = number
        numberContact.textColor = .black
        imageContact.image = picture
        imageContact.contentMode = .scaleAspectFill
        cardCryptoBiew.backgroundColor = .white
        cardCryptoBiew.layer.shadowColor = UIColor.gray.cgColor
        cardCryptoBiew.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardCryptoBiew.layer.shadowOpacity = 1.0
        cardCryptoBiew.layer.masksToBounds = false
        cardCryptoBiew.layer.cornerRadius = 2.0
    }
}
