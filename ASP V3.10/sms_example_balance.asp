<% Option Explicit %>
<%
'.---------------------------------------------------------------------------.
'|  Software: 	HTTP API - Send SMS Example: Get SMS Account Balance Example |
'|  Version: 	3.10														 |
'|  Email: 		support@solutions4mobiles.com								 |
'|  Info: 		http://www.solutions4mobiles.com							 |
'|  Phone:		+44 203 318 3618											 |
'| ------------------------------------------------------------------------- |
'| Copyright (c) 1999-2014, Mobiweb Ltd. All Rights Reserved.                |
'| ------------------------------------------------------------------------- |
'| LICENSE:																	 |
'| Distributed under the General Public License v3 (GPLv3)					 |
'| http://www.gnu.org/licenses/gpl-3.0.html									 |
'| This program is distributed AS IS and in the hope that it will be useful  |
'| WITHOUT ANY WARRANTY; without even the implied warranty of				 |
'| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                      |
'| ------------------------------------------------------------------------- |
'| SERVICES:																 |
'| We offer a number of paid services at http//www.solutions4mobiles.com:    |
'| - Bulk SMS / MMS / Premium SMS Services	/ HLR Lookup Service			 |
'| ------------------------------------------------------------------------- |
'| HELP:																	 |
'| - This class requires a valid HTTP API Account. Please email to			 |
'| sales@solutions4mobiles.com to get one									 |
''---------------------------------------------------------------------------'

' Send SMS Example: Get SMS Account Balance Example
' @copyright 1999 - 2014 Mobiweb Ltd.

Dim username	
username		=	"username"								' The HTTP API username of your account. 
Dim password
password		=	"password"								' The HTTP API password of your account.
Dim smsprovider												' The SMS Provider
smsprovider		=	"solutions4mobiles.com"

															' Build and encode the URL.
Dim url
url = "http://IPADDRESS/balance_script"						' The SMS HTTP API balance url.
Dim params
params = "username=" &username& "&password=" &password& "&provider=" &smsprovider 	' The parameter's string
Dim sol4mob_xml
Set sol4mob_xml = Server.CreateObject("Microsoft.XMLHTTP")							' Create object of class required for POST request.
sol4mob_xml.Open "POST", url, False													' Open POST request for our url
sol4mob_xml.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"	' Set POST request data headers
sol4mob_xml.Send params																' Send POST request with our parameters
Response.Write(sol4mob_xml.responseText)
%>