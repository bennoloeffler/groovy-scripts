#!/bin/bash
// 2>/dev/null; OPTS=""
// 2>/dev/null; exec groovy $OPTS "$0" "$@"; exit $?


static void main (String[] args) {
	if(args) {
		(0..args.size()-1).each { println  "args[$it] = ${args[it]}" } 
	} else {
		println "no args..."
	}
	println()
	println()
	println "INSPIRED by: https://stackoverflow.com/questions/306139/how-do-i-include-jars-in-a-groovy-script/8945888#8945888"
}