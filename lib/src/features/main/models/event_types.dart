enum EventType {
  birthdayParties('Birthday Parties'),
  newYearCelebrations('New Year\'s Celebrations'),
  weddings('Weddings'),
  graduationCeremonies('Graduation Ceremonies'),
  halloweenParties('Halloween Parties'),
  christmasCelebrations('Christmas Celebrations'),
  anniversaryParties('Anniversary Parties'),
  babyShowers('Baby Showers'),
  corporateEvents('Corporate Events'),
  familyReunions('Family Reunions'),
  other('Other');

  final String displayName;

  const EventType(this.displayName);

  @override
  String toString() => displayName;
}