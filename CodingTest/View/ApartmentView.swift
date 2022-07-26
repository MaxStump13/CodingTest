//
//  ApartmentView.swift
//  CodingTest
//
//  Created by Maximilian Stump on 7/26/22.
//

import SwiftUI

struct ApartmentView: View {
    @StateObject var viewModel = ApartmentViewModel()
    var body: some View {
        NavigationView{
        
            List{
                ForEach(viewModel.apartments, id: \.aptName){apartment in
                    VStack{
                        Text(apartment.aptName)
                        HStack{
                            Text(String(apartment.numberOfBedrooms))
                            Text(String(apartment.numberOfBathrooms))
                            }
                        Text(String(apartment.rentPerMonth))
                        }
                }
                    
            }.onAppear() {
                ApartmentViewModel().getData()
                    
                }
            
            .navigationTitle("Rented Apartments")
        
        }
    }
    
}

struct ApartmentView_Previews: PreviewProvider {
    static var previews: some View {
        ApartmentView()
    }
}
