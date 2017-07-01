//
//  ViewController.swift
//  ReSwift-Counter-Example
//
//  Created by Isao Kono on 2017/07/01.
//  Copyright © 2017年 isaoeka. All rights reserved.
//

import UIKit
import ReSwift

class ViewController: UIViewController, StoreSubscriber {

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // subscribe to state changes
        mainStore.subscribe(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func newState(state: AppState) {
        // when the state changes, the UI is updated to reflect the current state
        
        let count = mainStore.state.counter?.count ?? 0
        let text: String = "\(count)"
        counterLabel.text = text
    }
    
    @IBAction func downTouch(_ sender: AnyObject) {
        mainStore.dispatch(CounterState.ActionCreator.decrease());
    }
    
    @IBAction func upTouch(_ sender: AnyObject) {
        mainStore.dispatch(CounterState.ActionCreator.increase());
    }
    
}

