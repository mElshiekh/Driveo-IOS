//
//  VerifyModelProtocol.swift
//  Driveo
//
//  Created by Admin on 6/3/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import Foundation

protocol VerifyModelProtocol {
    
     func sendVerificationCode(withToken token: String, withCode code: String)
    
    func requestVerificationCode(forToken token:String)
    
}
