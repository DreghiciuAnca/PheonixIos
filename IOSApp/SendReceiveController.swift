import UIKit

import Geth

let newspaper = "newspaper.circle"



class SendReceiveController: UIViewController  {

    @IBOutlet var tableView: UITableView!
    

    let pictureTransaction: [UIImage] = [UIImage(named: "t.square")!, UIImage(named: "anca.jpg")!, UIImage(named: "m.square")!]
    let transaction: [String] = ["Tom sent 50 Cardano to Lucy", "Jasmine received 100 USDT from James", "Michael sent 2 ETH to Dominic"]
    let transactionDetail: [String] = ["concert tickets", "Christmas Gift", " Booking the hotel" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.backgroundColor = .white
    
    }
    
    @IBAction func PublicFeedButtonTapped(_ sender: UIButton) {
        guard let publicFeedViewController = storyboard?.instantiateViewController(identifier: "publicFeed") as? PublicFeedController else{
            return
        }
        publicFeedViewController.title = "Public Feed"
        navigationController?.pushViewController(publicFeedViewController, animated: true)
       
    }
    
    @IBAction func AccountButtonTapped(_ sender: UIButton) {
    
        guard let accountViewController = storyboard?.instantiateViewController(identifier: "account") as? AccountViewController else{
            return
        }
        accountViewController.title = "Account"
        navigationController?.pushViewController(accountViewController, animated: true)
    }
    

}

extension SendReceiveController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didBeginMultipleSelectionInteractionAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension SendReceiveController: UITableViewDataSource{
    /// How many rows are
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictureTransaction.count
    } 
    /// What cells are being used
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CardCell
        
        cell.configure(picture: pictureTransaction[indexPath.row],
                       title: transaction[indexPath.row],
                       description: transactionDetail[indexPath.row])
        
        return cell
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1",

            let nextScene = segue.destination as? TransactionViewController,
            let indexPath = self.tableView.indexPathForSelectedRow{
            let selectedRow = transaction[indexPath.row]
            nextScene.detailedString = selectedRow
        }
    }
    
}

