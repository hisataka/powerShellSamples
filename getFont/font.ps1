[void]([Reflection.Assembly]::loadwithpartialname("system.drawing"))
$font = new-object system.drawing.text.installedfontcollection
$font.families