//
//  Category.swift
//  07-Code-Swagger
//
//  Created by Hector Delgado on 10/2/19.
//  Copyright © 2019 hector delgado. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
