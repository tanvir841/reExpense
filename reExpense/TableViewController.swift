//
//  TableViewController.swift
//  reExpense
//
//  Created by Tanvir on 12/30/19.
//  Copyright © 2019 tanvir841. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var UItableView: UITableView!
    
    var items : [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSManagedObject>(entityName: "Expense")
            
            do {
                try items = context.fetch(request)
    //            print(items)
            } catch {
                print("error: \(error)")
            }
    //        infoLabel.text = "Debit: \(debit) & Credit: \(credit)"
            UItableView.reloadData()
        }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! CustomTableViewCell
        let item = items[indexPath.row]
        let expenseLabel = (item.value(forKey: "describe") as! String)
         let expenseAmount = item.value(forKey: "amount") as! String
    
        cell.DescribeLbl.text = expenseLabel
        cell.AmountLbl.text = expenseAmount
        print("inside")
        return cell    }
    

   
}
