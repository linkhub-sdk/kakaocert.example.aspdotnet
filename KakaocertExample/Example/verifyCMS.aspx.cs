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
    public partial class verifyCMS : System.Web.UI.Page
    {
        public String code = null;
        public String message = null;
        public ResponseVerify responseObj = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            /**
            * 자동이체 출금동의 서명을 검증합니다.
            */

            // Kakaocert 이용기관코드, Kakaocert 파트너 사이트에서 확인
            String clientCode = "020040000001";

            // 요청시 반환받은 접수아이디
            String receiptId = "020090914524500001";

            try
            {
                responseObj = Global.kakaocertService.verifyCMS(clientCode, receiptId);
            }
            catch (KakaocertException ex)
            {
                code = ex.code.ToString();
                message = ex.Message;
            }
        }
    }
}
