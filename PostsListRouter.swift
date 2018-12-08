//
//  PostsListRouter.swift
//  Flickr
//
//  Created by Амир Разаков on 07.07.2018.
//  Copyright © 2018 Амир Разаков. All rights reserved.
//

import UIKit

class PostsListRouter {
    func presentPostDetails(viewController: UIViewController,
                         viewModel: VieweableModel) {
        let photoViewerAssembly = PhotoViewerAssembly()
        let photoViewerVC = photoViewerAssembly.build(viewModel: viewModel)
        viewController.present(photoViewerVC,
                               animated: true,
                               completion: nil)
    }
}
