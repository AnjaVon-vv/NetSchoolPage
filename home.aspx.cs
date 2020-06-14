using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Exp23
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //验证登录
            if (Session["usrSess"] == null)
                Response.Redirect("login.aspx");

            SqlConnection connection;
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            connection.Open();
            string query = @"select USERNAME from STUDENT where USERID = '" + Session["usrSess"].ToString() + "'";
            SqlCommand command;
            command = new SqlCommand(query, connection);
            SqlDataReader reader;
            reader = command.ExecuteReader();
            if(reader.Read())
                usrL.Text = Session["usrSess"].ToString() + "  " + reader["USERNAME"].ToString() + "的空间，密码为：" +Session["pwdSess"].ToString() ;
            timeL.Text = "现在时刻：" + System.DateTime.Now.ToString();

            reader.Close();
            connection.Close();

            ////查询结果下拉列表
            //ListBMyClass.Items.Clear();
            //ListBMyClass.Items.Add("我所选修的课程");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("login.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //连接数据库
            SqlConnection connection;
            connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            connection.Open();

            string query = @"select STUDENT_CLASS.CLASSID, CLASSNAME, SPECIALTY, GRADE from STUDENT_CLASS,CLASS where USERID = '" + Session["usrSess"].ToString() + "'";

            //GridView
            SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)

            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

            ////创建查询命令
            //SqlCommand command;
            //command = new SqlCommand(query, connection);

            ////执行查询
            //SqlDataReader reader;
            //reader = command.ExecuteReader();

            ////行为
            //while (reader.Read())
            //{
            //    ListBMyClass.Items.Add(reader["CLASSID"].ToString());
            //}

            //reader.Close();

            connection.Close();
        }
    }
}