//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Unbox

struct ___VARIABLE_Struct___: Unboxable {

    var id: Int

    init(unboxer: Unboxer) {
        self.id = unboxer.unbox(key: "id")
    }
    
}
