//
//  ViewController.swift
//  MPP
//
//  Created by Nicholas Volpe on 9/25/18.
//  Copyright © 2018 Nicholas Volpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getPostsForAuthor(id: 1)
    }
    
    func getPostsForAuthor(id: Int) {
        
        let postsForAuthorQuery = PostsForAuthorQuery()
        apollo.fetch(query: postsForAuthorQuery) { (result, error) in
            
            let name = result?.data?.author?.firstName
            let three = 3
        
        }
    }
}

