//
//  PostsListModuleAssembly.swift
//  Flickr
//
//  Created by Krasa on 07.07.2018.
//  Copyright © 2018 Krasa. All rights reserved.
//

import UIKit

class PostsListModuleAssembly {
    func build()-> UIViewController {
        let postsListView = Bundle.main
            .loadNibNamed("PostsListsViewControllerView", owner: nil, options: nil)![0] as! PostsListsViewControllerView
        
        let postsListViewController = PostsListViewController()
        
        postsListViewController.postsListViewControllerView = postsListView
        
        let internetService = PostsListInternetService()
        let dataProvider = PostsListDataProvider(output: postsListViewController,
                                                 internetServiceInput: internetService)
        internetService.output = dataProvider
        postsListViewController.dataProviderInput = dataProvider
        postsListViewController.router = PostsListRouter()
            
        
        return postsListViewController
    }
}
