//
//  LoginModelProtocol.swift
//  Driveo
//
//  Created by Admin on 6/2/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import Foundation
protocol LoginModelProtocol {
    func sendRequest(withParameters params:Dictionary<String,Any>);
    func onSuccess(_ response:Any) -> Void
    func onFailure(_ networkError:ErrorType) -> Void
}

