//
//  TabBarViewController.swift
//  reExpense
//
//  Created by Tanvir on 12/30/19.
//  Copyright © 2019 tanvir841. All rights reserved.
//

import UIKit
import CoreData

class TabBarViewController: UIViewController {

    
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var AmountField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSave(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Expense", in: managedContext)!
        let expense = NSManagedObject(entity: entity, insertInto: managedContext)
        
        expense.setValue(AmountField.text, forKeyPath: "amount")
        expense.setValue(descriptionField.text, forKeyPath: "describe")
        
        do {
            try managedContext.save()
            print("Save")
        } catch {
            print("Error in save:\(error)")
        }
        
    }
    
    
}
