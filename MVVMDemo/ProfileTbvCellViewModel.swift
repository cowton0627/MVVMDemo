//
//  ProfileTbvCellViewModel.swift
//  MVVMDemo
//
//  Created by Chun-Li Cheng on 2021/12/12.
//

import Foundation

class ProfileTbvCellViewModel {
    var people = [Person]()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        guard let url = Bundle.main.url(forResource: "Person", withExtension: "json") else {
            return
        }
        
        do {
            let data = try Data(contentsOf: url)
            let people = try JSONDecoder().decode([Person].self, from: data)
            self.people = people
        }
        catch {
            print(error)
        }
    }
    
}
