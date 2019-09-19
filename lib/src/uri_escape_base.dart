Map<String, String> escapeChar = {
  "\$": "%24",
  "&": "%26",
  "`": "%60",
  ":": "%3A",
  "<": "%3C",
  ">": "%3E",
  "[": "%5B",
  "]": "%5D",
  "{": "%7B",
  "}": "%7D",
  "“": "%22",
  "+": "%2B",
  "%": "%25",
  "@": "%40",
  "/": "%2F",
  ";": "%3B",
  "=": "%3D",
  "?": "%3F",
  "\\": "%5C",
  "^": "%5E",
  "|": "%7C",
  "~": "%7E",
  "‘": "%27",
  ",": "%2C",
  " ": "+"
};

String EscapeURIString(String text) {
  var tmp = text.split("");
  String EscapeText = "";
  for (var s in tmp) {
    var t = escapeChar[s];
    if (t == null) {
      EscapeText = "$EscapeText$s";
      continue;
    }
    if (t != null) {
      EscapeText = "$EscapeText$t";
    }
  }
  return EscapeText;
}
