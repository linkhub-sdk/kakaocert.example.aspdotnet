<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="getCMSresultObj.aspx.cs" Inherits="Kakaocert.Example.Example.getCMSResult" %>

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
		<legend>자동이체 출금동의 결과정보 확인</legend>
		<ul>
			<% if (!String.IsNullOrEmpty(code)) { %>
				<li>Response.code : <%= code %> </li>
				<li>Response.message : <%= message %></li>
			<% } else { %>
				<li>receiptID (접수 아이디) : <%=resultObj.receiptID %> </li>
				<li>clientCode (이용기관코드) : <%=resultObj.clientCode %> </li>
				<li>clientName (이용기관명) : <%=resultObj.clientName %> </li>
				<li>state (상태코드) : <%=resultObj.state %> </li>
				<li>regDT (등록일시) : <%=resultObj.regDT %> </li>
				<li>receiverHP (수신자 휴대폰번호) : <%=resultObj.receiverHP %> </li>
				<li>receiverName (수신자 성명) : <%=resultObj.receiverName %> </li>
				<li>receiverBirthday (수신자 생년월일) : <%=resultObj.receiverBirthday %> </li>
				<li>bankAccountName (예금주명) : <%=resultObj.bankAccountName %> </li>
				<li>bankAccountNum (계좌번호) : <%=resultObj.bankAccountNum %> </li>
				<li>bankCode (은행코드) : <%=resultObj.bankCode %> </li>
				<li>clientUserID (납부자번호) : <%=resultObj.clientUserID %> </li>
				<li>expires_in (인증요청 만료시간(초)) : <%=resultObj.expires_in %> </li>
				<li>callCenterNum (고객센터 번호) : <%=resultObj.callCenterNum %> </li>
				<li>allowSimpleRegistYN (은행계좌 실명확인 생략여부	) : <%=resultObj.allowSimpleRegistYN %> </li>
				<li>verifyNameYN (수신자 실명확인 여부) : <%=resultObj.verifyNameYN %> </li>
				<li>payload (payload) : <%=resultObj.payload %> </li>
				<li>requestDT (카카오 인증서버 등록일시) : <%=resultObj.requestDT %> </li>
				<li>expireDT (인증요청 만료일시) : <%=resultObj.expireDT %> </li>
				<li>tmstitle (인증요청 메시지 제목) : <%=resultObj.tmstitle %> </li>
				<li>tmsmessage (인증요청 메시지 부가내용) : <%=resultObj.tmsmessage %> </li>
				<li>signedData (전자서명 데이터 전문) : <%=resultObj.signedData %> </li>
				<li>subClientName (별칭) : <%=resultObj.subClientName %> </li>
				<li>subClientCode (별칭코드) : <%=resultObj.subClientCode %> </li>
				<li>viewDT (수신자 카카오톡 인증메시지 확인일시) : <%=resultObj.viewDT %> </li>
				<li>completeDT (수신자 카카오톡 전자서명 완료일시	) : <%=resultObj.completeDT %> </li>
				<li>verifyDT (전자서명 검증일시) : <%=resultObj.verifyDT %> </li>
				
			<% } %>
		</ul>
	</fieldset>
</div>
</body>
</html>
