class Tcases {
  var cases;
  var active;
  var deaths;
  var recovered;
  var critical;

  Tcases({this.active, this.critical, this.deaths, this.recovered, this.cases});

  factory Tcases.fromJson(final json) {
    return Tcases(
        cases: json['cases'],
        active: json['active'],
        deaths: json['deaths'],
        recovered: json['recovered'],
        critical: json['critical']);
  }
}
