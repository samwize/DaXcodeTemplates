import UIKit

public enum Device {
    case phone3_5inch
    case phone4inch
    case phone4_7inch
    case phone5_5inch
    case pad9_7inch
    case pad12_9inch
}

public enum Orientation {
    case portrait
    case landscape
}

// swiftlint:disable:next cyclomatic_complexity
public func traitsAndSize(device: Device, orientation: Orientation) -> (UITraitCollection, CGSize) {
    let traits: UITraitCollection
    let parentSize: CGSize
    switch (device, orientation) {
    case (.phone3_5inch, .portrait):
        parentSize = .init(width: 320, height: 480)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone3_5inch, .landscape):
        parentSize = .init(width: 480, height: 320)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .compact),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone4inch, .portrait):
        parentSize = .init(width: 320, height: 575)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone4inch, .landscape):
        parentSize = .init(width: 575, height: 320)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .compact),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone4_7inch, .portrait):
        parentSize = .init(width: 375, height: 667)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone4_7inch, .landscape):
        parentSize = .init(width: 667, height: 375)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .compact),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone5_5inch, .portrait):
        parentSize = .init(width: 414, height: 736)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .compact),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.phone5_5inch, .landscape):
        parentSize = .init(width: 736, height: 414)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .regular),
            .init(verticalSizeClass: .compact),
            .init(userInterfaceIdiom: .phone)
            ])
    case (.pad9_7inch, .portrait):
        parentSize = .init(width: 768, height: 1024)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .regular),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .pad)
            ])
    case (.pad9_7inch, .landscape):
        parentSize = .init(width: 1024, height: 768)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .regular),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .pad)
            ])
    case (.pad12_9inch, .portrait):
        parentSize = .init(width: 1024, height: 1366)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .regular),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .pad)
            ])
    case (.pad12_9inch, .landscape):
        parentSize = .init(width: 1366, height: 1024)
        traits = .init(traitsFrom: [
            .init(horizontalSizeClass: .regular),
            .init(verticalSizeClass: .regular),
            .init(userInterfaceIdiom: .pad)
            ])
    }
    return (traits, parentSize)
}

public func createPlaygroundLiveView(wrapping child: UIViewController,
                                     device: Device = .phone4_7inch,
                                     orientation: Orientation = .portrait,
                                     contentSizeCategory: UIContentSizeCategory = .large,
                                     additionalTraits: UITraitCollection = .init()) -> UIViewController {

        let parent = UIViewController()
        parent.addChildViewController(child)

        let (traits, parentSize) = traitsAndSize(device: device, orientation: orientation)

        let allTraits = UITraitCollection(traitsFrom: [
            traits,
            additionalTraits,
            .init(preferredContentSizeCategory: contentSizeCategory)
            ])
        parent.setOverrideTraitCollection(allTraits, forChildViewController: child)

        parent.view.addSubview(child.view)
        child.view.translatesAutoresizingMaskIntoConstraints = false

        parent.view.frame.size = parentSize
        parent.preferredContentSize = parentSize
        parent.view.backgroundColor = .white

        parent.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.leadingAnchor.constraint(equalTo: parent.view.leadingAnchor),
            child.view.trailingAnchor.constraint(equalTo: parent.view.trailingAnchor),
            child.view.bottomAnchor.constraint(equalTo: parent.view.bottomAnchor),
            child.view.topAnchor.constraint(equalTo: parent.view.topAnchor),
            ])

        return parent
}

// MARK: - Convenient creations of live view for a UIViewController

extension UIViewController {

    public func createLiveView(device: Device = .phone4_7inch,
                               orientation: Orientation = .portrait,
                               contentSizeCategory: UIContentSizeCategory = .large,
                               additionalTraits: UITraitCollection = .init()) -> UIViewController {
        return createPlaygroundLiveView(wrapping: self, device: device, orientation: orientation,
                                        contentSizeCategory: contentSizeCategory, additionalTraits: additionalTraits)
    }

    public var onIphoneX: UIViewController {
        return createLiveView(device: .phone5_5inch)
    }

    public var onIphone5: UIViewController {
        return createLiveView(device: .phone4inch)
    }

    public var onIpadPro: UIViewController {
        return createLiveView(device: .pad12_9inch)
    }

    public var onIpadMini: UIViewController {
        // Actually iPad Mini is 7.9 inch only, but the resolution is the same as 9.7 inch
        return createLiveView(device: .pad9_7inch)
    }

}
