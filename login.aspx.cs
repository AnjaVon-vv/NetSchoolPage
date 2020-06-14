using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Exp23
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //连接数据库
            SqlConnection connection;
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            connection.Open();

            string query = @"select * from STUDENT where USERID = '" + txtUsrName.Text + @"'and PASSWORD = '" + txtPwd.Text + "'";

            //创建查询命令
            SqlCommand command;
            command = new SqlCommand(query, connection);

            //执行查询
            SqlDataReader reader;
            reader = command.ExecuteReader();

            //行为
            if(reader.HasRows)
            {
                Session["usrSess"] = txtUsrName.Text;
                Session["pwdSess"] = txtPwd.Text;
                reader.Close();
                connection.Close();
                Response.Redirect("home.aspx");
            }
            else
                tipL.Text = "请输入正确的用户名和密码！";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsrName.Text = null;
            txtPwd.Text = null;
            tipL.Text = "重置成功！请输入用户名、密码！";
        }
    }
}