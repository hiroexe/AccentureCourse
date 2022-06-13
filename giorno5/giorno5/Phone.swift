//
//  Phone.swift
//  giorno5
//
//  Created by Stefano carella on 10/06/22.
//

import Foundation

class Phone {
    
    private var model: String
    private var brand: String
    private var price: Int
    private var imei: String
    private var isDualSim: Bool
   

    init(model: String , brand: String , price: Int, imei: String, isDualSim: Bool) {
        self.model = model
        self.brand = brand
        self.price = price
        self.imei = imei
        if brand == "Apple" {
            self.isDualSim = false
        } else {
            self.isDualSim = isDualSim
        }
    }
    
    
    func getModel() -> String {
        return model
    }
    func getBrand() -> String {
        return brand
    }
    func getPrice() -> Int {
        return price
    }
    func getImei() -> String {
        return imei
    }
    func getIsDualSim() -> Bool {
        return isDualSim
    }
    func setPrice(newValue: Int) {
        price = newValue
    }

    
    func toString() {
        print("Model:  \(model)")
        print("Brand:  \(brand)")
        print("Price:  \(price)")
        print("Imei:  \(imei)")
        print("Is Dual Sim?  \(isDualSim)")
    }
}


