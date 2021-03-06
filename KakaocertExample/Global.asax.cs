﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;

namespace Kakaocert.Example
{
    public class Global : System.Web.HttpApplication
    {
        // 링크아이디
        private string LinkID = "TESTER";

        // 비밀키
        private string SecretKey = "SwWxqU+0TErBXy/9TVjIPEnI0VTUMMSQZtJf3Ed8q3I=";

        // kakaocert 서비스 객체 선언
        public static KakaocertService kakaocertService;

        protected void Application_Start(object sender, EventArgs e)
        {
            // kakaocert 서비스 객체 초기화
            kakaocertService = new KakaocertService(LinkID, SecretKey);

            // 인증토큰 IP 제한기능 사용여부, 권장(true)
            kakaocertService.IPRestrictOnOff = true;
        }
    }
}