//
//  ProductLine.swift
//  AppleProducts
//
//  Created by Suresh Maidaragi on 30/07/18.
//  Copyright © 2018 Suresh Maidaragi. All rights reserved.
//

import Foundation
import UIKit
class ProductLine{
   
    var name: String
    var products : [Product]
    
    init(named: String, includeProducts: [Product])
    {
        name =  named
        products = includeProducts
    }
    
    class func getProductLines() -> [ProductLine]{
        
        return [iDevices(), mac(),Softwares(), iPod(),iCloudPay()]
    }
    
    // Mark: - Private Helper Methods
    
    private class func iDevices() -> ProductLine{
         var products = [Product]()
        products.append(Product(titled: "iPhone", description: "iPhone (/ˈaɪfoʊn/ EYE-fone) is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.", imageName: "iphone"))
        
        products.append(Product(titled: "iPad", description: "The fourth-generation iPad is a tablet computer produced and marketed by Apple Inc. Compared to its predecessor, the third-generation iPad, the fourth-generation iPad maintained the Retina Display but", imageName: "ipodpro"))
        
        products.append(Product(titled: "Mac", description: "MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998", imageName: "macbookpro"))
        
        products.append(Product(titled: "MacbookPro", description: "The ultimate pro notebook, MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.", imageName: "macbookair"))
        
      
        return ProductLine(named: "Mobiles", includeProducts:  products)
    }
    
    private class func mac() -> ProductLine{
        var products = [Product]()
        products.append(Product(titled: "iPhone", description: "iPhone (/ˈaɪfoʊn/ EYE-fone) is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.", imageName: "iphone"))
        
        products.append(Product(titled: "iPad", description: "The fourth-generation iPad is a tablet computer produced and marketed by Apple Inc. Compared to its predecessor, the third-generation iPad, the fourth-generation iPad maintained the Retina Display but", imageName: "ipodpro"))
        
        products.append(Product(titled: "Mac", description: "MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998", imageName: "macbookpro"))
        
        products.append(Product(titled: "MacbookPro", description: "The ultimate pro notebook, MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.", imageName: "macbookair"))
        
        
        return ProductLine(named: "Mac", includeProducts:  products)
    }
    
    private class func Softwares() -> ProductLine{
        var products = [Product]()
        products.append(Product(titled: "iPhone", description: "iPhone (/ˈaɪfoʊn/ EYE-fone) is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.", imageName: "iphone"))
        
        products.append(Product(titled: "iPad", description: "The fourth-generation iPad is a tablet computer produced and marketed by Apple Inc. Compared to its predecessor, the third-generation iPad, the fourth-generation iPad maintained the Retina Display but", imageName: "ipodpro"))
        
        products.append(Product(titled: "Mac", description: "MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998", imageName: "macbookpro"))
        
        products.append(Product(titled: "MacbookPro", description: "The ultimate pro notebook, MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.", imageName: "macbookair"))
        
        
        return ProductLine(named: "Mobiles", includeProducts:  products)
    }
    
    private class func iPod() -> ProductLine{
        var products = [Product]()
        products.append(Product(titled: "iPhone", description: "iPhone (/ˈaɪfoʊn/ EYE-fone) is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.", imageName: "iphone"))
        
        products.append(Product(titled: "iPad", description: "The fourth-generation iPad is a tablet computer produced and marketed by Apple Inc. Compared to its predecessor, the third-generation iPad, the fourth-generation iPad maintained the Retina Display but", imageName: "ipodpro"))
        
        products.append(Product(titled: "Mac", description: "MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998", imageName: "macbookpro"))
        
        products.append(Product(titled: "MacbookPro", description: "The ultimate pro notebook, MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.", imageName: "macbookair"))
        
        
        return ProductLine(named: "iPod", includeProducts:  products)
    }
    
    private class func iCloudPay() -> ProductLine{
        var products = [Product]()
        products.append(Product(titled: "iPhone", description: "iPhone (/ˈaɪfoʊn/ EYE-fone) is a line of smartphones designed and marketed by Apple Inc. The iPhone line of products use Apple's iOS mobile operating system software. The first-generation iPhone was released on June 29, 2007, and multiple new hardware iterations with new iOS releases have been released since.", imageName: "iphone"))
        
        products.append(Product(titled: "iPad", description: "The fourth-generation iPad is a tablet computer produced and marketed by Apple Inc. Compared to its predecessor, the third-generation iPad, the fourth-generation iPad maintained the Retina Display but", imageName: "ipodpro"))
        
        products.append(Product(titled: "Mac", description: "MAC Cosmetics, stylized as M·A·C, is a cosmetics manufacturer founded in Toronto in 1984 by Frank Toskan and Frank Angelo. The company is headquartered in New York City and became part of the Estée Lauder Companies in 1998", imageName: "macbookpro"))
        
        products.append(Product(titled: "MacbookPro", description: "The ultimate pro notebook, MacBook Pro features faster processors, upgraded memory, the Apple T2 chip, and a Retina display with True Tone technology.", imageName: "macbookair"))
        
        
        return ProductLine(named: "iCloudPay", includeProducts:  products)
    }
}
