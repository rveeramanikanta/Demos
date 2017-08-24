var startRulerUnits = app.preferences.rulerUnits
var startTypeUnits = app.preferences.typeUnits
var startDisplayDialogs = app.displayDialogs
app.preferences.rulerUnits = Units.PIXELS
app.preferences.typeUnits = TypeUnits.PIXELS
app.displayDialogs = DialogModes.NO
while (app.documents.length) {
	app.activeDocument.close()
}
var mergedDoc = app.documents.add(1000, 1000, 72, "Merged Samples",
		NewDocumentMode.RGB, DocumentFill.TRANSPARENT, 1)
var samplesFolder = Folder(app.path + "/Samples/")
var fileList = samplesFolder.getFiles()
for (var i = 0; i < fileList.length; i++) {
	if (fileList[i] instanceof File) {
		open(fileList[i])
		var docName = app.activeDocument.name
		app.activeDocument.flatten()
		app.activeDocument.selection.selectAll()
		app.activeDocument.selection.copy()
		app.activeDocument.close(SaveOptions.DONOTSAVECHANGES)
		var topLeftH = Math.floor(Math.random() * 2)
		var topLeftV = Math.floor(Math.random() * 2)
		var docH = app.activeDocument.width.value / 2
		var docV = app.activeDocument.height.value / 2
		var selRegion = Array(Array(topLeftH * docH, topLeftV * docV), Array(
				topLeftH * docH + docH, topLeftV * docV), Array(topLeftH * docH
				+ docH, topLeftV * docV + docV), Array(topLeftH * docH,
				topLeftV * docV + docV),
				Array(topLeftH * docH, topLeftV * docV))
		app.activeDocument.selection.select(selRegion)
		app.activeDocument.paste()
		app.activeDocument.activeLayer.name = docName
		app.activeDocument.activeLayer.fillOpacity = 50
	}
}
for (var x = 0; x < app.activeDocument.layers.length; x++) {
	for (var y = 0; y < app.activeDocument.layers.length - 1 - x; y++) {
		var doc1 = app.activeDocument.layers[y].name
		var doc2 = app.activeDocument.layers[y + 1].name
		if (doc1.toUpperCase() > doc2.toUpperCase()) {
			app.activeDocument.layers[y].move(app.activeDocument.layers[y + 1],
					ElementPlacement.PLACEAFTER)
		}
	}
}
app.preferences.rulerUnits = startRulerUnits
app.preferences.typeUnits = startTypeUnits
app.displayDialogs = startDisplayDialogs
