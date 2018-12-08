//
//  DataProviderIOProtocols.swift
//  Flickr
//
//  Created by Krasa on 16.06.2018.
//  Copyright © 2018 Krasa. All rights reserved.
//

import Foundation

protocol PostsListDataModel {
    var postID: Int { get set }
    var postTitle: String { get set }
    var photoURL: URL { get set }
}

protocol PostsListDataProviderInput {
    init(output: PostsListDataProviderOutput, internetServiceInput: PostsListInternetServiceInput)
    func getPosts(perPage:Int, page:Int)-> Void
}

protocol PostsListDataProviderOutput {
    var dataSource: [PostsListDataModel] { get set }
}
