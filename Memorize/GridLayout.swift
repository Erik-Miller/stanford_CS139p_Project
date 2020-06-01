//
//  GridLayout.swift
//  Memorize
//
//  Created by Erik Miller on 5/31/20.
//  Copyright © 2020 Erik Miller. All rights reserved.
//

import SwiftUI

struct GridLayout {
    var size: CGSize
    var rowCount: Int = 0
    var columnCount: Int = 0

    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) { }
    
    var itemSize: CGSize {Void.self}
    
    func location(ofItemAt index: Int) -> CGPoint { }
    
}

