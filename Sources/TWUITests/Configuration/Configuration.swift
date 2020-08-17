//  Copyright 2019 Hotspring Ventures Ltd.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import Foundation

// Configuration has: 1) initial dictionay (Config); 2) API mocks.
public protocol Configuration: AnyObject {
    var dictionary: [String: String] { get set }
    var apiConfiguration: APIConfiguration { get set }
}

public enum ConfigurationKey {
    public static let serverPort = "UI_TEST_SERVER_PORT"
}

extension Configuration {
    func update(port: UInt16) {
        dictionary[ConfigurationKey.serverPort] = String(port)
    }
}
