
import UIKit

class TransactionViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    var detailedString: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.text = detailedString
        field.delegate = self
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
//
//        //showTransaction()
//
//        return true
//    }
    
    @IBAction func showTransaction(){
        
    }
   

}
