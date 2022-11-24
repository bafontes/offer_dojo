//
//  OffersViewController.swift
//  offers_dojo
//
//  Created by Bruno Andres Fontes on 22/11/22.
//

import UIKit

class OffersViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!

    var offers: [String] = ["Offer 1", "offer 2", "offer 3", "offer 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    private func setUI() {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UINib.init(nibName: "OfferTableViewCell", bundle: .main), forCellReuseIdentifier: "OfferTableViewCell")
    }
}
extension OffersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return offers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferTableViewCell") as? OfferTableViewCell

        guard let cell = cell else { return UITableViewCell() }

        return cell
    }
}
