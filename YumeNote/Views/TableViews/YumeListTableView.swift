//
//  YumeListTableView.swift
//  YumeNote
//
//  Created by Kouki Saito on 10/10/15.
//  Copyright © 2015 Kouki Siato. All rights reserved.
//

import UIKit

class YumeListTableView: UITableView {
    var notes: [Note]! {
        didSet {
            self.delegate = self
            self.dataSource = self
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        registerNib(UINib(nibName: "YumeListTableViewCell", bundle: nil), forCellReuseIdentifier: "YumeListTableViewCell")
        self.estimatedRowHeight = 44.0
        self.rowHeight = UITableViewAutomaticDimension
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}

// MARK: - UITableViewDelegate
extension YumeListTableView: UITableViewDelegate {
    
}

// MARK: - UITableViewDataSource
extension YumeListTableView: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = dequeueReusableCellWithIdentifier("YumeListTableViewCell") {
            return cell
        }
        return UITableViewCell()
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

// MARK: - UIScrollViewDelegate
extension YumeListTableView: UIScrollViewDelegate {
    
}
