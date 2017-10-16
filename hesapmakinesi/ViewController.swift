//
//  ViewController.swift
//  hesapmakinesi
//
//  Created by Yusuf Kutlay on 10.10.2017.
//  Copyright © 2017 Yusuf Kutlay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum hata: Error{
        case infHtasi
        case nanHatasi
    }

    @IBOutlet weak var sonuc: UILabel!
    @IBOutlet weak var giris1: UITextField!
    @IBOutlet weak var giris2: UITextField!
    
    @IBAction func toplamaİslemi(_ sender: Any) {
        if let ilkNumara = Int(giris1.text!){
            if let ikinciNumara = Int (giris2.text!){
                let  islemSonucu = ilkNumara+ikinciNumara
                sonuc.text = String(islemSonucu)
                
            }
        }
        else {
            let hata = "Sayı Giriniz..."
            sonuc.text = String(hata)
            
            
        }
    }
    
    @IBAction func cikarmaİslemi(_ sender: Any) {
        if let ilkNumara = Int(giris1.text!){
            if let ikinciNumara = Int (giris2.text!){
                let  islemSonucu = ilkNumara-ikinciNumara
                sonuc.text = String(islemSonucu)
            }
        }
    }
    
    @IBAction func carpmaİslemi(_ sender: Any) {
        if let ilkNumara = Int(giris1.text!){
            if let ikinciNumara = Int (giris2.text!){
                let  islemSonucu = ilkNumara*ikinciNumara
                sonuc.text = String(islemSonucu)
            }
        }
    }
    
    @IBAction func bölmeİslemi(_ sender: Any)  {
            let bolunen = Int(giris1.text!)
            let bolen = Int (giris2.text!)

        func bolme() throws -> Int {
                    guard bolen != 0 else {
                        throw hata.nanHatasi
                    }
                    guard bolunen != 0 else {
                        throw hata.infHtasi
                    }
            return bolunen!/bolen!
                    }
        do {
            try bolme()
        } catch hata.nanHatasi {
            sonuc.text = "Hata"
        }
                
                
       
            
                
                
                }
                

        
                

        
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        sonuc.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
            
}




