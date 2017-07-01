//
//  CounterStateActions.swift
//  ReSwift-Counter-Example
//
//  Created by Isao Kono on 2017/07/01.
//  Copyright © 2017年 isaoeka. All rights reserved.
//

import Foundation
import ReSwift

protocol CounterStateActionCreatorProtocol {
    static func decrease() -> Store<AppState>.AsyncActionCreator
    static func increase() -> Store<AppState>.AsyncActionCreator
}

extension CounterState {
    struct Increase: Action {}
    struct Decrease: Action {}
    
    struct ActionCreator: CounterStateActionCreatorProtocol {
        
        static func decrease() -> Store<AppState>.AsyncActionCreator {
            return { (state: AppState, store: Store<AppState>, callback) in
                store.dispatch(CounterState.Decrease())
            }
        }
        
        static func increase() -> Store<AppState>.AsyncActionCreator {
            return { (state: AppState, store: Store<AppState>, callback) in
                store.dispatch(CounterState.Increase())
            }
        }
    }
}
