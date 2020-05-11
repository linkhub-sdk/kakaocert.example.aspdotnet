<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KakaocertExample._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Kakaocert API SDK ASP.NET Example</title>
    <link href="./Example.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="content">
    <p class="heading1">Kakaocert SDK ASP.NET Example.</p>
    <br/>
    <fieldset class="fieldset1">
        <legend>간편 전자서명 API</legend>
        <ul>
            <li><a href="Example/requestESign.aspx">requestESign</a> - 전자서명 요청</li>
            <li><a href="Example/getESignResult.aspx">getESignResult</a> - 전자서명 결과정보 확인</li>
        </ul>
    </fieldset>
     <br/>
    <fieldset class="fieldset1">
        <legend>본인인증 API</legend>
        <ul>
            <li><a href="Example/requestVerifyAuth.aspx">requestVerifyAuth</a> - 본인인증 요청</li>
            <li><a href="Example/getVerifyAuthResult.aspx">getVerifyAuthResult</a> - 본인인증 결과정보 확인</li>
        </ul>
    </fieldset> <br/>
    <fieldset class="fieldset1">
        <legend>자동이체 출금동의 API</legend>
        <ul>
            <li><a href="Example/requestCMS.aspx">requestCMS</a> - 자동이체 출금동의 요청</li>
            <li><a href="Example/getCMSResult.aspx">getCMSResult</a> - 자동이체 출금동의 결과정보 확인</li>
        </ul>
    </fieldset>
</div>
</body>
</html>
