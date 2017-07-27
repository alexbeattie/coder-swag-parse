//
//  Category.swift
//  coder-swag
//
//  Created by Alex Beattie on 7/27/17.
//  Copyright © 2017 Artisan Branding. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
