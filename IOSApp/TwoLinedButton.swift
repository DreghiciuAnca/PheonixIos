//
//  TwoLinedButton.swift
//  IOSApp
//
//  Created by Anca Dreghiciu on 11/6/21.
//


import UIKit

struct TwoLinedButtonViewModel{
    let image: UIImage?
    let text: String
    let backgroundColor: UIColor?
    
}

final class TwoLinedButton: UIButton {
    
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 20, weight: .regular)
        return label
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.cornerRadius = 8
        backgroundColor = .systemRed
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    func configure(with viewModel: TwoLinedButtonViewModel){
        label.text = viewModel.text
        backgroundColor = viewModel.backgroundColor
        iconImageView.image = viewModel.image
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        let iconSize: CGFloat = 30
        //let iconX: CGFloat = (frame.size.width - label.frame.size.width - iconSize - 5) / 2
        iconImageView.frame = CGRect(x: 45,
                                     y: 5,
                                     width: iconSize,
                                     height: iconSize)
        if label.text == "Public Feed"{
            label.frame = CGRect(x: 10,
                             y: 15,
                             width: label.frame.size.width,
                             height: frame.size.height)
        }
        else if label.text == "Account"{
            label.frame = CGRect(x: 25,
                                 y: 15,
                                 width: label.frame.size.width,
                                 height: frame.size.height)
        }
    }

}
