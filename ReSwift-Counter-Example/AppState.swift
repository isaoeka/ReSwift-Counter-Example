//
//  AppState.swift
//  ReSwift-Counter-Example
//
//  Created by Isao Kono on 2017/07/01.
//  Copyright © 2017年 isaoeka. All rights reserved.
//

import ReSwift

struct AppState: StateType {
    var counter: CounterState? = CounterState()
}
