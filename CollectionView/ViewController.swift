//
//  ViewController.swift
//  CollectionView
//
//  Created by Ömer on 8.04.2025.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var yemeklerListesi = [Yemekler]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tasarim:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.collectionView.frame.size.width
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        tasarim.itemSize = CGSize(width: (genislik-30)/3, height: (genislik-30)/3)
        
        tasarim.minimumInteritemSpacing = 5
        tasarim.minimumLineSpacing = 5
        
        collectionView.collectionViewLayout = tasarim
        
        
        
        let y1 = Yemekler(yemekId: 1, yemekAdi: "Ayran", yemekResimAdi: "ayran", yemekFiyat: 3.0)
        let y2 = Yemekler(yemekId: 2, yemekAdi: "Baklava", yemekResimAdi: "baklava", yemekFiyat: 20.0)
        let y3 = Yemekler(yemekId: 3, yemekAdi: "Fanta", yemekResimAdi: "fanta", yemekFiyat: 5.0)
        let y4 = Yemekler(yemekId: 4, yemekAdi: "Izgara Somon", yemekResimAdi: "izgarasomon", yemekFiyat: 25.0)
        let y5 = Yemekler(yemekId: 5, yemekAdi: "Izgara Tavuk", yemekResimAdi: "izgaratavuk", yemekFiyat: 15.0)
        let y6 = Yemekler(yemekId: 6, yemekAdi: "Kadayıf", yemekResimAdi: "kadayif", yemekFiyat: 16.0)
        let y7 = Yemekler(yemekId: 7, yemekAdi: "Kahve", yemekResimAdi: "kahve", yemekFiyat: 6.0)
        let y8 = Yemekler(yemekId: 8, yemekAdi: "Köfte", yemekResimAdi: "kofte", yemekFiyat: 15.0)
        let y9 = Yemekler(yemekId: 9, yemekAdi: "Lazanya", yemekResimAdi: "lazanya", yemekFiyat: 21.0)
        let y10 = Yemekler(yemekId: 10, yemekAdi: "Makarna", yemekResimAdi: "makarna", yemekFiyat: 13.0)
        let y11 = Yemekler(yemekId: 11, yemekAdi: "Pizza", yemekResimAdi: "pizza", yemekFiyat: 18.0)
        let y12 = Yemekler(yemekId: 12, yemekAdi: "Su", yemekResimAdi: "su", yemekFiyat: 1.0)
        let y13 = Yemekler(yemekId: 13, yemekAdi: "Sütlaç", yemekResimAdi: "sutlac", yemekFiyat: 10.0)
        let y14 = Yemekler(yemekId: 14, yemekAdi: "Tiramisu", yemekResimAdi: "tiramisu", yemekFiyat: 16.0)
        
        yemeklerListesi.append(y1)
        yemeklerListesi.append(y2)
        yemeklerListesi.append(y3)
        yemeklerListesi.append(y4)
        yemeklerListesi.append(y5)
        yemeklerListesi.append(y6)
        yemeklerListesi.append(y7)
        yemeklerListesi.append(y8)
        yemeklerListesi.append(y9)
        yemeklerListesi.append(y10)
        yemeklerListesi.append(y11)
        yemeklerListesi.append(y12)
        yemeklerListesi.append(y13)
        yemeklerListesi.append(y14)
        
            
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return yemeklerListesi.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let gelenYemek = yemeklerListesi[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "yemekCol", for: indexPath) as! CollectionViewCell1
        
        cell.labelYemek.text = gelenYemek.yemekAdi
        
        cell.imageYemek.image = UIImage(named: gelenYemek.yemekResimAdi!)
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }

    
}

