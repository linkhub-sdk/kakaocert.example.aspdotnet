﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verifyAuth.aspx.cs" Inherits="Kakaocert.Example.Example.verifyAuth" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>Kakaocert SDK ASP.NET Example</title>
	<link href="../Example.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="content">
	<p class="heading1">Response</p>
	<br/>
	<fieldset class="fieldset1">
		<legend>본인인증 서명검증</legend>
		<ul>
			<% if (!String.IsNullOrEmpty(code)) { %>
				<li>Response.code : <%= code %> </li>
				<li>Response.message : <%= message %></li>
			<% } else { %>
				<li>receiptId (접수아이디) : <%= responseObj.receiptId%></li>
				<li>signedData (전자서명 데이터 전문) : <%= responseObj.signedData%></li>
			<% } %>
		</ul>
	</fieldset>
</div>
</body>
</html>