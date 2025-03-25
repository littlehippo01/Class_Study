main() {
  checkVersion();
  print("End Process");
}

checkVersion() async {
  var version = await lookupVersion();
  print(version);
}

lookupVersion() {
  return 12;
}