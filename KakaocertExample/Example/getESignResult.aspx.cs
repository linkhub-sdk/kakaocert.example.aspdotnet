using System;
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
    public partial class getESignResult : System.Web.UI.Page
    {
        public String code = null;
        public String message = null;
        public ResultESign resultObj = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            /**
            * 전자서명 결과정보를 확인합니다.
            */

            // Kakaocert 이용기관코드, Kakaocert 파트너 사이트에서 확인
            String clientCode = "020040000001";

            // 요청시 반환받은 접수아이디
            String receiptId = "020090313491200001";

            // AppToApp 인증 서명값, 앱스킴성공시 반환되는 signature 기재
            // TalkMessage 인증시 null 처리
            String signature = null;

            try
            {
                resultObj = Global.kakaocertService.GetESignResult(clientCode, receiptId, signature);
            }
            catch (KakaocertException ex)
            {
                code = ex.code.ToString();
                message = ex.Message;
            }
        }
    }
}
