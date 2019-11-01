//
//  CustomerListViewController.swift
//  C0765373_F2019_MAD3115_Mid-Term-Test-P1Test
//
//  Created by simar mahi on 01/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private func addLogoutButton()
    {
        let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListViewController.logout(sender:)))
        
        navigationItem.leftBarButtonItem=btnLogout
    }
    
    @objc func logout(sender: UIBarButtonItem)
    {
        print("logout")
        navigationController?.popViewController(animated: true)
    }
    
  var tempvar = Singleton.getInstance()
    
    @IBOutlet weak var customerListTable: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customerListTable.delegate=self
        customerListTable.dataSource=self
      navigationItem.hidesBackButton=true
         addLogoutButton()
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return tempvar.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = x?.fullName
         return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "List of Customers"
    }
    
    override func viewWillAppear(_ animated: Bool) {
           customerListTable.reloadData()
           
       }
    

    
    

    
}
