//
//  ViewController.swift
//  againplist
//
//  Created by greens on 28/01/21.
//  Copyright © 2021 Greens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var a = 10
    var xname = [String]()
    var xgender = [String]()
    var xcourse = [String]()
    var xphone = [String]()
    var xmobile = [String]()
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myplist()
//        print("hii")
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return xname.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.namelbl.text = xname[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 250
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "secondid", sender: self)
    }
    
    func myplist() {
//        var myarray : NSArray?
        if let path = Bundle.main.path(forResource: "Greenstech", ofType: "plist") {
//            print(path)
            
            let myarray = NSArray(contentsOfFile: path)
            
//            print(myarray!)
            print("TESt----jhg")
            if let myarr = myarray as? [Any] {
                
                print("my aray--->",myarr)
                
                if let newarray = (myarr as! [Any]?) {
                    
//                    print(newarray)

                    for index in newarray {

                        if let value = index as? [String:Any] {
                            if let name = value[ "name"] as? String{
                                xname.append(name)
                                print("hello",name)
                            }
                            if let gender = value[ "gender"] as? String{
                                xgender.append(gender)
                            }
                            if let course = value[ "course"] as? String{
                                xcourse.append(course)
                            }
                            if let contact = value["contact"] as? [String:Any]{
                            if let phone = contact[ "phone"] as? String{
                                xphone.append(phone)
                            }
                            if let mobile = contact[ "mobile"] as? String{
                                xmobile.append(mobile)
                            }
                            }
                        }
                    }
                }
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondid"
        {
            let vc = segue.destination as! MyViewController
            let path = self.tableview.indexPathForSelectedRow
            vc.xnames = xname[path!.row]
            vc.xgenders = xgender[path!.row]
            vc.xcourses = xcourse[path!.row]
            vc.xphones = xphone[path!.row]
            vc.xmobiles = xmobile[path!.row]
            
        }
    }
    
}

       
