part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {

  final AuthorizationStatus status;
  //TODO: Replace dynamic for notification model
  final List<PushMessage> notifications;

  const NotificationsState({
    this.status = AuthorizationStatus.notDetermined,
    this.notifications = const [],
  });

  NotificationsState copyWith({
    AuthorizationStatus? status,
    List<PushMessage>? notifications,
  }) {
    return NotificationsState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
    );
  }
  
  @override
  List<Object> get props => [ status, notifications ];
}
