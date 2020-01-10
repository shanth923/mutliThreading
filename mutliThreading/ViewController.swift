//
//  ViewController.swift
//  mutliThreading
//
//  Created by R Shantha Kumar on 1/10/20.
//  Copyright © 2020 R Shantha Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      multiThread()
        
        
        // Do any additional setup after loading the view.
    }

    

    func multiThread(){
        
        
        var thread1 = DispatchQueue(label: "thread1")
        var thread2 = DispatchQueue(label: "thread2")
        var thread3 = DispatchQueue(label: "thread3")
        

        
//  sync when thrad run no thread where not runs a parallelly
        
        
        thread1.sync {
            
            for i in 0...100{
                
                print("@@@@@@@@ \(i)")
               
                
                
            }
        }
       thread2.async {
            
            for i in 0...100{
                
                print("######## \(i)")
                
            }
        }
        
        thread3.async {
        
        for i in 0...100{
            
            print("$$$$$$$$ \(i)")
            
        }
        
        }
            
            
            
        }
        
        
        
        
        
    }
    
    
    
    
    
    
