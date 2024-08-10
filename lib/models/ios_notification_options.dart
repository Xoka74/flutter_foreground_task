/// Notification options for iOS platform.
class IOSNotificationOptions {
  /// Constructs an instance of [IOSNotificationOptions].
  const IOSNotificationOptions({
    this.playSound = true,
    this.showBanner = true,
    this.showInCenter = true,
  });

  /// Whether to play sound when creating notifications.
  /// The default is `true`.
  final bool playSound;

  /// Whether to present the notification as a banner.
  /// The default is `true`.
  final bool showBanner;

  /// Whether to show the notification in Notification Center.
  /// The default is `true`.
  final bool showInCenter;

  /// Returns the data fields of [IOSNotificationOptions] in JSON format.
  Map<String, dynamic> toJson() {
    return {
      'playSound': playSound,
      'showBanner': showBanner,
      'showInCenter': showInCenter,
    };
  }
}
