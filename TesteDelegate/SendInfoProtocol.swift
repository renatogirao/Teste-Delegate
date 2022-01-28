//
//  SendInfoProtocol.swift
//  TesteDelegate
//
//  Created by Renato Savoia Girão on 27/01/22.
//

import Foundation
import UIKit

protocol sendInfoToSecondView {
    func myVCDidFinish(_ controller: SecondViewController, text: String)
}
