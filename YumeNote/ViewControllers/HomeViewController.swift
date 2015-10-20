//
//  HomeViewController.swift
//  YumeNote
//
//  Created by Kouki Saito on 10/5/15.
//  Copyright © 2015 Kouki Siato. All rights reserved.
//

import UIKit
import PagingMenuController

class HomeViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let ranking = YumeListViewController.instantiateFromResource()
        ranking.title = "ランキング"
        ranking.notes = (1..<15).map({ (_) in return Note() })
        let newly = YumeListViewController.instantiateFromResource()
        newly.title = "新着"
        newly.notes = [Note(), Note(), Note()]
        
        
        
        let viewControllers: [UIViewController] = [ranking, newly]
        
        let options = PagingMenuOptions()
        options.menuHeight = 50
        options.menuDisplayMode = .SegmentedControl
        
        if let pagingMenuController = self.childViewControllers.first as? PagingMenuController {
            pagingMenuController.delegate = self
            pagingMenuController.setup(viewControllers: viewControllers, options: options)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: PagingMenuControllerDelegate {
    
}