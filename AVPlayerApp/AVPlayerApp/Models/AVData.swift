//
//  AVData.swift
//  AVPlayerApp
//
//  Created by t2023-m0056 on 5/3/24.
//

import Foundation

struct AVData: Decodable {
    let id: Int
    let title: String
    let thumbnailUrl: URL
    let duration: Double
    let uploadTime: String
    let views: String
    let author: String
    let videoUrl: URL
    let description: String
    let subscriber: String
    let isLive: Bool
}
