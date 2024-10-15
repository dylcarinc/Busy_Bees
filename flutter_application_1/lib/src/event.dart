class Event {
  final DateTime dateAndTime;
  final String description;
  final String title;
  Event(this.dateAndTime, this.title, this.description);

  

  DateTime getDate(){
    return dateAndTime;
  }
  @override
    String toString(){
      return title;
    }
}