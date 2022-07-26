//
//  ApartmentViewModel.swift
//  CodingTest
//
//  Created by Maximilian Stump on 7/26/22.
//

import Foundation

class ApartmentViewModel : ObservableObject {
    @Published var apartments : [Apartment] = []
    func getData(){
    guard let apiUrl = URL(string : "https://mocki.io/v1/7f401311-4e44-4f24-9a6a-42699e2ac458")
    else{
        return
    }
    
    
    let task = URLSession.shared.dataTask(with: apiUrl) { [self] data, response, error in
        guard let data = data
        else{
            print("error with request", error)
            return
        }
        
        do{
            let request = try JSONDecoder().decode([Apartment].self, from: data)
            
            DispatchQueue.main.async {
                self.apartments = request.sorted(by: {$0.aptName < $1.aptName})
            }
        }
        catch{
            print("error decoding", error)
        }

    }
        task.resume()

}
    
    
}
