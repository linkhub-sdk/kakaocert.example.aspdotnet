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
    public partial class verifyAuth : System.Web.UI.Page
    {
        public String code = null;
        public String message = null;
        public ResponseVerify responseObj = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            /**
            * 본인인증 요청시 반환된 접수아이디를 통해 본인인증 서명을 검증합니다.
            * - 서명검증시 전자서명 데이터 전문(signedData)이 반환됩니다.
            * - 본인인증 요청시 작성한 Token과 서명 검증시 반환되는 signedData의 동일여부를 확인하여 본인인증 검증을 완료합니다.
            * - 카카오페이 서비스 운영정책에 따라 검증 API는 1회만 호출할 수 있습니다. 재시도시 오류처리됩니다.
            * - https://www.kakaocert.com/docs/verifyAuth/API/dotnet#F-VerifyAuth
            */

            // Kakaocert 이용기관코드, Kakaocert 파트너 사이트에서 확인
            String clientCode = "020040000001";

            // 요청시 반환받은 접수아이디
            String receiptId = "022050914510800001";

            try
            {
                responseObj = Global.kakaocertService.verifyAuth(clientCode, receiptId);
            }
            catch (KakaocertException ex)
            {
                code = ex.code.ToString();
                message = ex.Message;
            }
        }
    }
}
