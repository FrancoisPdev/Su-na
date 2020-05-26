//
//  UrlVideo.swift
//  Su-na
//
//  Created by dikeys on 12/05/2020.
//  Copyright © 2020 PARENT François. All rights reserved.
//

import Foundation
import SwiftUI

struct UrlVideo: Identifiable{

    var id = UUID()
    var title: String
    var subTitle: String?
    var url: String
    var userName: String
    var image: String
    var comment: [CommentVideo]
    var live: Bool = true


}





