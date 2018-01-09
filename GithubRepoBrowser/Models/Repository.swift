//
//  Repository.swift
//  GithubRepoBrowser
//
//  Created by Vitor Kawai Sala on 02/01/18.
//  Copyright © 2018 Vitor Kawai Sala. All rights reserved.
//

import Foundation

struct RepositoryList: Codable {
    let total_count: Int
    let incomplete_results: Bool
    let items: [Repository]
}

struct Repository: Codable {
    let id: Int
    let name: String
    let description: String?
    let url: String
    let stargazers_count: Int
    let forks_count: Int
    let owner: User
    let license: License?
}
