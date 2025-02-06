//
//  ScavengerListController.swift
//  photo-scavenger
//
//  Created by Adrian Haro on 2/4/25.
//

import UIKit

class ScavengerListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var items = [Scavenger](){
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.tableHeaderView = UIView()

        tableView.dataSource = self
        
        items = Scavenger.list
    }


}

extension ScavengerListController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ScavengerItem", for: indexPath) as? ScavengerItem else {
            fatalError("Unable to dequeue Scavenge Items")
        }
        
        print("dequed")

        cell.base(with: items[indexPath.row])

        return cell
    }
}
