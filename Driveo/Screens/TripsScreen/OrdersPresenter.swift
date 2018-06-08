//
//  OrdersPresenter.swift
//  Driveo
//
//  Created by Admin on 6/9/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import Foundation
class OrdersPresenter: OrdersPresenterProtocol {
    
    var ordersView:OrdersViewProtocol
    var ordersModel:OrdersModelProtocol!
    
    init(withView view:OrdersViewProtocol) {
        ordersView = view
        
    }
    
    func requestOrders(ofType typeOrder: OrderType) {
        ordersModel = OrderModel(withPresenter: self)
        
        let defaults = UserDefaults.standard
        let token = defaults.string(forKey: "auth_token")
        ordersModel.getOrders(forType: typeOrder, withToken: token!)
    }
    
    func onRequestSuccess(withOrders orders: [String : [OrderMock]]) {
        
    }
    
    func onRequestFailure(failure: String) {
        
    }
    
    
}