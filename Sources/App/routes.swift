import Vapor

public func routes(_ router: Router) throws {
    let mockController = MockController()
    
    router.get("mocks", use: mockController.index)
    router.post("mocks", use: mockController.create)
    router.delete("mocks", use: mockController.delete)
    
    router.get(all, use: mockController.respond)
    router.post(all, use: mockController.respond)
    router.put(all, use: mockController.respond)
    router.delete(all, use: mockController.respond)
    router.patch(all, use: mockController.respond)
}
