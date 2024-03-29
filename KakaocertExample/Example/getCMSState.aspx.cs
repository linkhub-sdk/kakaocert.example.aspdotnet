﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Kakaocert.Example.Example
{
    public partial class getCMSState : System.Web.UI.Page
    {
        public String code = null;
        public String message = null;
        public ResultCMS resultObj = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            /**
            * 자동이체 출금동의 요청시 반환된 접수아이디를 통해 서명 상태를 확인합니다.
            * - https://www.kakaocert.com/docs/CMS/API/dotnet#GetCMSState
            */

            // Kakaocert 이용기관코드, Kakaocert 파트너 사이트에서 확인
            String clientCode = "020040000001";

            // 요청시 반환받은 접수아이디
            String receiptId = "022051916301600001";

            try
            {
                resultObj = Global.kakaocertService.getCMSState(clientCode, receiptId);
                
            }
            catch (KakaocertException ex)
            {
                code = ex.code.ToString();
                message = ex.Message;
            }
        }
    }
}
