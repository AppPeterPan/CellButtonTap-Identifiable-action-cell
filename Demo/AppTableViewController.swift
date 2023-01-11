//
//  AppTableViewController.swift
//  Demo
//
//  Created by Peter Pan on 2023/1/11.
//

import UIKit

class AppTableViewController: UITableViewController {
    let apps = [
        App(name: "IG"),
        App(name: "LINE")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppTableViewCell", for: indexPath) as! AppTableViewCell
        
        let app = apps[indexPath.item]
        cell.nameLabel.text = app.name
        cell.iconImageView.image = UIImage(named: app.name)
        cell.buyButton.id = app.id
        cell.delegate = self
        return cell
    }
    
    func buy(app: App) {
        print("buy \(app.name)")
    }
    
}

extension AppTableViewController: AppTableViewCellDelegate {
    
    func buyAppButtonTap(sender: BuyButton) {
        guard let id = sender.id else { return }
        let index = apps.indexOfElement(with: id)
        let app = apps[index]
        buy(app: app)
    }
    
    
}
