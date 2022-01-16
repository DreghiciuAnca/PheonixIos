
import UIKit

class PublicFeedController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var cryptoPicker: UITextField!
    @IBOutlet weak var tableContacts: UITableView!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var receiveButton: UIButton!
    
    let cryptocurrency = ["BTC", "USDT", "ETH", "ADA", "LANC"]
    var pickerView = UIPickerView()
    
    let contactImage: [UIImage] = [UIImage(named: "t.square")!, UIImage(named: "m.square")!, UIImage(named: "anca.jpg")!]
    let contactName: [String] = ["Thomas", "Michael", "Jasmine"]
    let contactNumber: [String] = ["+1345567891", "+308572493", "+4828473829"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        cryptoPicker.inputView = pickerView
        cryptoPicker.textAlignment = .center
        cryptoPicker.placeholder = "Select Cryptocurrency"
        cryptoPicker.layer.cornerRadius = 20
        cryptoPicker.clipsToBounds = true
        cryptoPicker.layer.shadowRadius = 10
        cryptoPicker.layer.shadowOpacity = 1.0
        cryptoPicker.layer.shadowOffset = CGSize(width: 3, height: 3)
        tableContacts.dataSource = self
        tableContacts.backgroundColor = .white
        
        configureButtons()
    }

    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cryptocurrency.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return cryptocurrency[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cryptoPicker.text = cryptocurrency[row]
        cryptoPicker.resignFirstResponder()
    }
    
    func configureButtons(){
        sendButton.layer.cornerRadius = 0.5 * sendButton.bounds.size.width
        sendButton.clipsToBounds = true
        
        receiveButton.layer.cornerRadius = 0.5 * receiveButton.bounds.size.width
        receiveButton.clipsToBounds = true
    }
}


extension PublicFeedController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension PublicFeedController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactName.count
    }
    /// What cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! CardCell
        
        cell.configureCryptoCard(picture: contactImage[indexPath.row], name: contactName[indexPath.row], number: contactNumber[indexPath.row])
        
        return cell
    }
}
