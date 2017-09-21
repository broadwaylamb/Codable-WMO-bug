// If I move this function to the Container.swift file, the test passes.
// If I remove it at all, it still passes.
// If it's left here, in a separate file, the test fails.
private func neverCalled(someRawRepresentable: SomeRawRepresentable) {
    print(someRawRepresentable.rawValue)
}
