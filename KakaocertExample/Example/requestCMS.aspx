﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestCMS.aspx.cs" Inherits="Kakaocert.Example.Example.requestCMS" %>

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
		<legend>자동이체 출금동의 요청</legend>
		<ul>
			<% if (!String.IsNullOrEmpty(code)) { %>
				<li>Response.code : <%= code %> </li>
				<li>Response.message : <%= message %></li>
			<% } else { %>
				<li>receiptId (접수아이디) : <%= responseObj.receiptId%></li>
				<li>tx_id (카카오톡 트랜잭션아이디[AppToApp호출용]) : <%= responseObj.tx_id%></li>
			<% } %>
		</ul>
	</fieldset>
</div>
</body>
</html>