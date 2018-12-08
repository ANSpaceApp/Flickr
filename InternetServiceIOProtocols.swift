//
//  InternetServiceIOProtocols.swift
//  Flickr
//
//  Created by Амир Разаков on 16.06.2018.
//  Copyright © 2018 Амир Разаков. All rights reserved.
//

import Foundation

protocol PostsListInternetServiceInput {
    var output: PostsListInternetServiceOutput { get set }
    func getPosts(perPage:Int, page:Int)-> Void
}

protocol PostsListInternetServiceOutput {
    func posts(responseData: Data?, responseError: Error?)
}
