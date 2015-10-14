//
//  YumeListViewController.swift
//  YumeNote
//
//  Created by Kouki Saito on 10/10/15.
//  Copyright © 2015 Kouki Siato. All rights reserved.
//

import UIKit

class YumeListViewController: UIViewController, StoryboardInstantiatable {
    static var storyboardName = "YumeListViewController"
    
    var notes = [Note]()
    @IBOutlet weak var tableView: YumeListTableView! {
        didSet {
            tableView.yumeListTableViewDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.notes = notes
        // Do any additional setup after loading the view.
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

extension YumeListViewController: YumeListTableViewDelegate {
    func yumeListTableView(yumeListTableView: YumeListTableView, didSelectNote: Note) {
        let vc = YumeDetailViewController.instantiateFromResource()
        showViewController(vc, sender: self)
    }
}
