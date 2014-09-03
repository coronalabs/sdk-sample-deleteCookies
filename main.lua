local webView = native.newWebView( display.contentCenterX, display.contentCenterY-100, 320, 280 )
webView:request( "http://www.coronalabs.com/" )

local widget = require("widget")

local function reloadWebview()
	webView:reload( )
end

local function clearCookies()
	webView:deleteCookies()
end

local reload = widget.newButton( {
	label = "reload",
	x = display.contentCenterX,
	y = display.contentCenterY+70,
	onPress = reloadWebview
} )

local cookies = widget.newButton( {
	label = "clearCookies",
	x = display.contentCenterX,
	y = display.contentCenterY+130,
	onPress = clearCookies
} )