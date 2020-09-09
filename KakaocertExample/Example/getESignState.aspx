<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getESignState.aspx.cs" Inherits="Kakaocert.Example.Example.getESignState" %>

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
		<legend>전자서명 서명상태 확인</legend>
		<ul>
			<% if (!String.IsNullOrEmpty(code)) { %>
				<li>Response.code : <%= code %> </li>
				<li>Response.message : <%= message %></li>
			<% } else { %>
				<li>receitpId (접수아이디) : <%= resultObj.receiptID%></li>
				<li>clientCode (이용기관코드) : <%=resultObj.clientCode %> </li>
				<li>clientName (이용기관명) : <%=resultObj.clientName %> </li>
				<li>state (상태코드) : <%=resultObj.state %> </li>
				<li>regDT (등록일시) : <%=resultObj.regDT %> </li>
				<li>expires_in (인증요청 만료시간(초)) : <%=resultObj.expires_in %> </li>
				<li>callCenterNum (고객센터 번호) : <%=resultObj.callCenterNum %> </li>
				
				
				<li>allowSimpleRegistYN (은행계좌 실명확인 생략여부	) : <%=resultObj.allowSimpleRegistYN %> </li>
				<li>verifyNameYN (수신자 실명확인 여부) : <%=resultObj.verifyNameYN %> </li>
				<li>payload (payload) : <%=resultObj.payload %> </li>
				<li>requestDT (카카오 인증서버 등록일시) : <%=resultObj.requestDT %> </li>
				<li>expireDT (인증요청 만료일시) : <%=resultObj.expireDT %> </li>
				<li>tmstitle (인증요청 메시지 제목) : <%=resultObj.tmstitle %> </li>
				<li>tmsmessage (인증요청 메시지 부가내용) : <%=resultObj.tmsmessage %> </li>
				<li>subClientName (별칭) : <%=resultObj.subClientName %> </li>
				<li>subClientCode (별칭코드) : <%=resultObj.subClientCode %> </li>
				<li>viewDT (수신자 카카오톡 인증메시지 확인일시) : <%=resultObj.viewDT %> </li>
				<li>completeDT (수신자 카카오톡 전자서명 완료일시	) : <%=resultObj.completeDT %> </li>
				<li>verifyDT (전자서명 검증일시) : <%=resultObj.verifyDT %> </li>
				<li>tx_id (카카오톡 트랜잭션아이디[AppToApp 앱스킴 호출용]) : <%=resultObj.tx_id %> </li>
				<li>appUseYN (AppToApp인증여부) : <%=resultObj.appUseYN %> </li>
				
				
			<% } %>
		</ul>
	</fieldset>
</div>
</body>
</html>
