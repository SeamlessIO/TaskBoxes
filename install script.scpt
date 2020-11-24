JsOsaDAS1.001.00bplist00�Vscript_#// Move files from one directory to another
// based on https://stackoverflow.com/questions/31710494/moving-created-files-with-jxa

var app = Application.currentApplication()
app.includeStandardAdditions = true

var Finder = Application('Finder');

// Create a Path object

// Current dir

// Make dir in Library
Finder.make(
	{
	new: "folder",
    //Requires password to create folder here
    at: "Macintosh HD:Users:adkj:Library:akjems",
    withProperties:
    	{
        name: "Made by JXA"
        }
    }
);

Finder.make(
	{
	new: "folder",
    //Requires password to create folder here
    at: "Macintosh HD:Users:adkj:Library:akjems:logs",
    withProperties:
    	{
        name: "Made by JXA"
        }
    }
);
//

// Move countdown files over


var sourceFile = Path("/User/adkj/Demo/sample.rtf");
var destintationFile = "/Users/adkj/Demo2/sample" ;
var destFolder=Path("/Users/adkj/Demo2");
var strPathSource = $(sourceFile).toString();
var strPathDest = $(destFolder).toString();

Finder.move(strPathSource, { to:strPathDest, replacing: true});                              9 jscr  ��ޭ