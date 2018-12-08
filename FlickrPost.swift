//
//  FlickrPost.swift
//  Flickr
//
//  Created by Амир Разаков on 23.06.2018.
//  Copyright © 2018 Амир Разаков. All rights reserved.
//

import Foundation
//MARK:- закрытый интерфейс
class Response: Codable {
    var photos: Photos
}
class Photos: Codable {
    var photo: [FlickrPost]
}

class FlickrPost: Codable {
    var id: String = ""
    var secret: String = ""
    var server: String = ""
    var farm: Int = 0
    var title: String = ""
    
    required init(string: String) {
        let splited = string.split(separator: "|")
        id = String(splited[0])
        server = String(splited[1])
    }
}
//MARK:- интерфейс PostsListDataModel
extension FlickrPost: PostsListDataModel {
    var postID: Int {
        get {
            return Int(id)!
        }
        set {
            id = String(newValue)
        }
    }
    
    var postTitle: String {
        get {
            return title
        }
        set {
            title = newValue
        }
    }
    
    var photoURL: URL {
        get {
            return URL(string: "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg")!
        }
        set {
            
        }
    }
}
//MARK:- интерфейс FlickrPostTableViewCellViewModel
extension FlickrPost: FlickrPostTableViewCellViewModel, VieweableModel {
    var postImageURL: URL? {
        return URL(string: "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret).jpg")!
    }
    var postTitleString: String {
        return title
    }
}

extension FlickrPost: Persistable {
    var persistantString: String {
        return "\(id)|\(server)"
    }
}
