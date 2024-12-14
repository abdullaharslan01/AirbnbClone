//
//  RandomImageListGenerator.swift
//  AirbnbAppClone
//
//  Created by abdullah on 12.12.2024.
//

import Foundation

struct RandomImageListGenerator
{
    static  func getRandomImageList() -> [String] {
        var images: [String] = []
        for _ in 1...5 {
            images.append("\(Int.random(in: 1...25))")
        }

        return images
    }

}
