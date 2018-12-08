//
//  InternetServiceIOProtocols.swift
//  Flickr
//
//  Created by Krasa on 16.06.2018.
//  Copyright © 2018 Krasa. All rights reserved.
//

import Foundation

protocol PostsListInternetServiceInput {
    var output: PostsListInternetServiceOutput { get set }
    func getPosts(perPage:Int, page:Int)-> Void
}

protocol PostsListInternetServiceOutput {
    func posts(responseData: Data?, responseError: Error?)
}
