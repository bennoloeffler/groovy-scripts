#!/bin/bash
// 2>/dev/null; OPTS=""
// 2>/dev/null; exec groovy $OPTS "$0" "$@"; exit $?

oracleSite = "https://docs.oracle.com/javase/specs/"
println """
searching for pdf files on ${oracleSite}
Please wait a moment..."""
// find the PDF links of the Java specifications
@Grab(group='org.ccil.cowan.tagsoup', module='tagsoup', version='1.2.1')
def getHtml() {
    def parser = new XmlParser(new org.ccil.cowan.tagsoup.Parser())
    parser.parse(oracleSite)
}
html.body.'**'.a.@href.grep(~/.*\.pdf/).each{ println it }