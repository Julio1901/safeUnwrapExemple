//
//  ViewController.swift
//  OptionalChainingExemple
//
//  Created by Julio Cesar  on 25/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        /* This triggers a runtime error
         
        let somePeople = Person()
        
        let roomCount = somePeople.residence!.numberOfRooms
        
        print(roomCount) */
        
//**************************************************//
        
        //Correct way to do it
        
            //First exemple with null value
        
        let somePeople = Person()
        
        if let roomCount = somePeople.residence?.numberOfRooms{
            print("Property is not null \(roomCount)")
        } else {
            print("Unable to retrieve the number of rooms")
        }
        
        
        
            //Second exemple without null value
        
        let somePeopleTwo = Person()
        
        somePeopleTwo.residence = Residence()
        
        if let roomCountTwo = somePeopleTwo.residence?.numberOfRooms{
            print("Property is not null \(roomCountTwo)")
        }else{
            print("Unable to retrieve the number of rooms")
        }
        
            //Third exemple
        
        
        var userName: String? = "Julio"
        //By default, never has display number of letters from name
        userName = nil
        
        if let userName = userName{
            let numberOfChars = userName.count
            print("The name countais \(numberOfChars) letters")
        }else{
            print("User name is null, please check it and try again")
        }
        
        /* A way to make this with number of lines redutected
         
         if let numberOfChars = userName?.count{
            print("The name countais \(numberOfChars) letters")
         }else{
            print("User name is null, please check it and try again")
         }
         */
        
        //Fourth example
        
        func login(userName: String? , phone: String?, password: String){
            
            if let phone = phone{
                print("Make login with phone numer \(phone)")
            } else if let userName = userName{
                print("Make login with user name \(userName)")
            } else{
                print("Error in login screen")
            }

            
        }
        
        
        
//**************************************************//
        
        //Guard let exemple
        
        func returnProductById(id: Int) -> String{
            let dict = [
                1: "iPhone",
                2: "MacBook",
                3: "iPad"
            ]
            guard let product = dict[id] else{return "Product not found, please check id"}
            
            return product
        }
        
        
        print(returnProductById(id: 2))
        //Message default is displayed
        print(returnProductById(id: 10))
        
        
        
        func buyAnProduct(id: Int) -> String{
            //Recicle guard let
            var name: String? = nil
            var password: String? = nil
        
            let dict = [
            1: "iPhone",
            2: "MacBook",
            3: "iPad"
            ]
            
            //This scenario always return default error message
            guard let product = dict[id],
                  let name = name,
                  let password = password
            else{return "some value has null, please try again"}
            
            return name
        }
        
        print(buyAnProduct(id: 1))
        
        
        
        
        
  
        
        
        
        
    }


}

