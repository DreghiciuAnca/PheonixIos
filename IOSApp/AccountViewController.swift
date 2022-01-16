

import UIKit

class AccountViewController: UIViewController {

    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var UsernameView: UIView!
    @IBOutlet weak var PasswordView: UIView!
    @IBOutlet weak var CryptowalletView: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "anca.jpg")
       
        configImage()
        configViewUsername()
        configViewCryptowallet()
        configViewPassword()
        
    }
    func configImage(){
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 30
        imageView.clipsToBounds = true
        imageView.layer.shadowRadius = 10
        imageView.layer.shadowOpacity = 1.0
        imageView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
    }
    
    func configViewUsername(){
        UsernameView.contentMode = .scaleAspectFill
        UsernameView.layer.cornerRadius = 20
        UsernameView.clipsToBounds = true
        UsernameView.layer.shadowRadius = 10
        UsernameView.layer.shadowOpacity = 1.0
        UsernameView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
      
        
    }
    
    func configViewCryptowallet(){
        CryptowalletView.contentMode = .scaleAspectFill
        CryptowalletView.layer.cornerRadius = 20
        CryptowalletView.clipsToBounds = true
        CryptowalletView.layer.shadowRadius = 10
        CryptowalletView.layer.shadowOpacity = 1.0
        CryptowalletView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        
    }
    func configViewPassword(){
        PasswordView.contentMode = .scaleAspectFill
        PasswordView.layer.cornerRadius = 20
        PasswordView.clipsToBounds = true
        PasswordView.layer.shadowRadius = 10
        PasswordView.layer.shadowOpacity = 1.0
        PasswordView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        
    }

}
