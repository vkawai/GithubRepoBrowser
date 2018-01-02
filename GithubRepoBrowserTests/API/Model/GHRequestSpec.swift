//
//  GHRequestSpec.swift
//  GithubRepoBrowserTests
//
//  Created by Vitor Kawai Sala on 02/01/18.
//  Copyright © 2018 Vitor Kawai Sala. All rights reserved.
//

import Foundation
import Quick
import Nimble

@testable import GithubRepoBrowser

final class GHRequestSpec: QuickSpec {
    override func spec() {
        it("should be created correctly") {
            let request: GHRequest = GHRequest(method: .get, service: .repositoryList, parameters: ["an" : "test"])
            
            expect(request.method).to(equal(Method.get))
            expect(request.service).to(equal(Service.repositoryList))
            expect(request.parameters).toNot(beNil())
            expect(request.parameters).to(haveCount(1))
        }
    }
}
