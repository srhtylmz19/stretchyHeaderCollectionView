
import Foundation


struct UserModel   {
    var gender: String?
    var name: String?

    
    var isActive : Bool = false
    
    init(gender: String,name: String) {
        self.gender = gender
        self.name = name
       
    }
    

}
