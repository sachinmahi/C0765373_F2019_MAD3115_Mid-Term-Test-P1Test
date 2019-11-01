//
//  Singleton.swift
//  C0765373_F2019_MAD3115_Mid-Term-Test-P1Test
//
//  Created by simar mahi on 01/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
    let c1 = Customer(customerID: 1, customerFName: "simar", customerLName: "Singh", customerEmail: "simar@gmail.com ")
        AddCustomer(customer: c1)
        let c2 = Customer(customerID: 2, customerFName: "Simaranjit", customerLName: "singh", customerEmail: "simaranjit@gmail.com ")
        AddCustomer(customer: c2)
        let c3 = Customer(customerID: 4, customerFName: "sachin", customerLName: "mahi", customerEmail: "sachin@gmail.com ")
        AddCustomer(customer: c3)
        let c4 = Customer(customerID: 3, customerFName: "Harmanpreet", customerLName: "Singh", customerEmail: "harmanpreetsingh@gmail.com ")
               AddCustomer(customer: c5)
       
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }

}


