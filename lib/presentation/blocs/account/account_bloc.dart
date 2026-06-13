

// Events
abstract class AccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}
class AccountLoadRequested extends AccountEvent {}
class AccountRefreshRequested extends AccountEvent {}

