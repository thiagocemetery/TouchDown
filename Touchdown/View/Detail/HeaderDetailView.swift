//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by PremierSoft on 10/08/21.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.title)
                .fontWeight(.black)
        })//: VStack
        .foregroundColor(.white)
    }
}

//MARK: - Preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
