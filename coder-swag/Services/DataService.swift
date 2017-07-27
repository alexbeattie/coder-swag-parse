//
//  DataService.swift
//  coder-swag
//
//  Created by Alex Beattie on 7/27/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.jpg"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats = [
        
        Product(title: "Devslopes Logo", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat", price: "$22", imageName: "hat02.png"),
        Product(title: "Alex", price: "$55", imageName: "hat03.png"),
        Product(title: "Beattie", price: "$28", imageName: "hat04.png")
        
    ]
    
    private let hoodies = [
        
        Product(title: "Artisan Branding", price: "$33", imageName: "hoodie01.png"),
        Product(title: "Artisan Branding Red", price: "$98", imageName: "hoodie02.png"),
        Product(title: "Artisan Branding Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Artisan Branding Black", price: "$311", imageName: "hoodie04.png")
    
    ]

    private let shirts = [
        Product(title: "ArtisanB red", price: "$33", imageName: "shirt01.png"),
        Product(title: "ArtisanB yellow", price: "$233", imageName: "shirt02.png"),
        Product(title: "ArtisanB blue", price: "$373", imageName: "shirt03.png"),
        Product(title: "ArtisanB green", price: "$13", imageName: "shirt04.png"),
        Product(title: "ArtisanB purple", price: "$13", imageName: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
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
