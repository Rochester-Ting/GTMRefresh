//
//  QQStyleHeaderViewController.swift
//  GTMRefresh
//
//  Created by luoyang on 2016/12/8.
//  Copyright © 2016年 luoyang. All rights reserved.
//

import UIKit

class QQStyleHeaderViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Setup
        //        self.tableView.backgroundColor = UIColor(red: 232.0/255.0, green: 234.0/255.0, blue: 235.0/255.0, alpha: 1.0)
        let qqHeader = QQStyleRefreshHeader()
        self.tableView.gtm_addRefreshHeaderView(refreshHeader: qqHeader) {
            [unowned self] in
            print("excute refreshBlock")
            self.refresh()
        }
        self.tableView.triggerRefreshing()
    }
    
    
    func refresh() {
        perform(#selector(endRefresing), with: nil, afterDelay: 3)
    }
    
    func endRefresing() {
        self.tableView.endRefreshing(isSuccess: true)
    }

}
