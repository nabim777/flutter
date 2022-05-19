Generator(
    String cName,
    String cInfo,
    String cDOF,
    String cFounderName,
    String cSector,
    String cVision,
    String cMoto,
    String cFocus,
    String cEmail,
    String cLocation) {
  String info = """
\t\t\t\t\tAbout us\n\nWelcome to the $cName. $cName was established on $cDOF, which is a source for all things related to $cSector. $cName is founded by $cFounderName and is located at $cLocation. This company is dedicated to providing the best in $cSector. This company is working to deliver the best user experience and satisfaction. The company’s motto is “$cSector”. The company vision is “$cVision”.\nOur company mainly focuses on:\n"$cFocus"\n\nEmail: $cEmail\nPhone number: $cInfo
""";
  return info;
}
