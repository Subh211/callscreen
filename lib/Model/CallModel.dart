class Call {
  final String name;
  final String phoneNumber;
  final String time;
  final String avatarUrl;
  final CallType callType;

  Call({
    required this.name,
    required this.phoneNumber,
    required this.time,
    required this.avatarUrl,
    required this.callType,
  });
}

enum CallType { incoming, outgoing, missed }


List<Call> recentCalls = [
  Call(
    name: 'Akash',
    phoneNumber: '+91 98345 638783',
    time: '02:45 PM',
    avatarUrl: 'assets/images/Akash.png',
    callType: CallType.incoming,
  ),
  Call(
    name: 'Sankar',
    phoneNumber: '+91 80463 76786',
    time: '02:45 PM',
    avatarUrl: 'assets/images/Sankar.png',
    callType: CallType.incoming,
  ),
  Call(
    name: 'John',
    phoneNumber: '+91 73684 89078',
    time: '02:45 PM',
    avatarUrl: 'assets/images/John.png',
    callType: CallType.incoming,
  ),
  Call(
    name: 'Kamatshi',
    phoneNumber: '+91 90537 43635',
    time: '02:40 PM',
    avatarUrl: 'assets/images/Kamatchi.png',
    callType: CallType.incoming,
  ),
  Call(
    name: 'Robert',
    phoneNumber: '+91 80547 53625',
    time: '01:27 PM',
    avatarUrl: 'assets/images/Robert.png',
    callType: CallType.missed,
  ),
  Call(
    name: 'Niyas',
    phoneNumber: '+91 90436 54334',
    time: '01:06 PM',
    avatarUrl: 'assets/images/Niyas.png',
    callType: CallType.incoming,
  ),
  Call(
    name: 'Alex',
    phoneNumber: '+91 91767 65774',
    time: '12:55 PM',
    avatarUrl: 'assets/images/Alex.png',
    callType: CallType.incoming,
  ),
];
