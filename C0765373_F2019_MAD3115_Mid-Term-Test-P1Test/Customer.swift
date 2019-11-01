//
//  Customer.swift
//  C0765373_F2019_MAD3115_Mid-Term-Test-P1Test
//
//  Created by simar mahi on 01/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String?
    
    var totalBillAmount : Float?
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
    }
}
