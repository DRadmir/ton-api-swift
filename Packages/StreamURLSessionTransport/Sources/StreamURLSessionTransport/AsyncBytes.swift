//
//  AsyncBytes.swift
//  
//
//  Created by Grigory Serebryanyy on 24.10.2023.
//

import Foundation

public final class AsyncBytes: AsyncSequence {
  public typealias AsyncIterator = Iterator
  public typealias Element = UInt8
  
  var bytesProvider: BytesProvider
  let task: URLSessionTask
  
  init(bytesProvider: BytesProvider, task: URLSessionTask) {
    self.bytesProvider = bytesProvider
    self.task = task
  }
  
  @available(macOS 12.0, iOS 15.0, watchOS 8.0, *)
  init(_ asyncBytes: URLSession.AsyncBytes, task: URLSessionTask) {
      self.task = task
      self.bytesProvider = asyncBytes.makeAsyncIterator()
  }
  
  public struct Iterator: AsyncIteratorProtocol {
    
    public typealias Element = UInt8
    
    var bytesProvider: BytesProvider
    let task: URLSessionTask
    
    public mutating func next() async throws -> UInt8? {
      return try await withTaskCancellationHandler {
        try await bytesProvider.next()
      } onCancel: { [task] in
        task.cancel()
      }
    }
  }
  
  public func makeAsyncIterator() -> Iterator {
    Iterator(bytesProvider: bytesProvider, task: task)
  }
}

