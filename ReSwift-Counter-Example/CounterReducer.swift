//
//  CounterReducer.swift
//  ReSwift-Counter-Example
//
//  Created by Isao Kono on 2017/07/01.
//  Copyright © 2017年 isaoeka. All rights reserved.
//

import ReSwift

struct CounterReducer {
    
    static func counterReducer(action: Action, state: CounterState?) -> CounterState {
        var state = state ?? CounterState()
        
        switch action {
        case _ as CounterState.Increase:
            state.count += 1
        case _ as CounterState.Decrease:
            state.count -= 1
        default:
            break
        }
        
        return state
    }
}
