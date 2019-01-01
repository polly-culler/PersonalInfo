<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="image/x-icon" rel="shortcut icon" href="favicon.ico" />
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet"/>

    <title>主页</title>
    <style type="text/css"> 
        #logIn,
            #signUp
            {
                 
            display: inline-block;
            padding: 4px 35px;
            margin-bottom: 0;
            font-size: 14px;
            line-height: 20px;
            vertical-align: middle;
            cursor: pointer;
            border: 1px solid #f06292;
            border-bottom-color: #b3b3b3;
            border-radius: 4px;
            background: #f06292;
            color: white;
                
            }
            #signUp
            {
            margin-left:-232px;   
            }
            #logIn
            {
                margin-left:362px;
                }
            hr
            {
                width:290px;
                border: 0;
                border-top: 1px solid #f06292;
                margin:auto;
                }
                .managerDetail
                {
                    color:#f06292;
                    text-align:center;
                    margin:auto;
                    line-height:30px;
                    }
                
             
    </style>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>
<body style=" background-image:url(BGPicture.jpg)">
    <form id="form1" runat="server">
    
    <div class="contain">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" 
            SelectCommand="SELECT * FROM [personalInfo]"></asp:SqlDataSource>
        <div class="navbar navbar-fixed-top">
              <div class="navbar-inner ">
                <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a class="brand" href="Login.aspx">itszjypolly</a>
                  <div class="nav-collapse collapse">
                    <ul class="nav">
                      <li class="active"><a href="Login.aspx">Home</a></li>
                      <li><a href="Index.aspx">关于</a></li>
                    </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
            </div>
       
           <div class="login" style="width:497px; height: 372px; margin-left:25%;">
        
              <p style="padding-top:200px;padding-left:200px;color:#f06292;font-size:16px;">用户名：<asp:TextBox ID="username" 
                      runat="server" ontextchanged="username_TextChanged"></asp:TextBox>
               </p>
        
              <p style="padding-top:10px;padding-left:200px;color:#f06292;font-size:16px;">密  码：<asp:TextBox ID="password" 
                      runat="server" ></asp:TextBox>
               </p>
        
               <asp:Button ID="logIn" runat="server" Text="登陆" onclick="logIn_Click"/>
               <asp:LinkButton ID="signUp" runat="server" Text="注册" PostBackUrl="Regsiter.aspx"></asp:LinkButton>
           </div>
       
    </div>
    <p>
        &nbsp;</p>
    </form>
    <hr />
    <label class="managerDetail">如果为管理员，请输入管理员账号<br />默认为20168&20168</label>
    <footer id="footer-section">
          <div class="container">
            <div class="footer-logo-copyright footer-not-logo">
              <div id="footer-copyright">
                <p>© itszjypolly | 2017</p>
              </div>
                <p class="pull-center">
                  <a href="#">Back to top</a>
                </p>
            </div>
          </div>
        </footer>

</body>
</html>
