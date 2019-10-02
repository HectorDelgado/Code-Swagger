//
//  DataService.swift
//  07-Code-Swagger
//
//  Created by Hector Delgado on 10/2/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$15", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$25", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Gray", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Gray", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Blue", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt04.png"),
        Product(title: "Devslopes Logo Shirt White", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategores() -> [Category] {
        return categories
    }
    
    func getProducts(forCategorytitle title:String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getHats()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
}
