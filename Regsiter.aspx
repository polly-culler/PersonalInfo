
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regsiter.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>注册</title>
    <link type="image/x-icon" rel="shortcut icon" href="favicon.ico" />
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet"/>
    <style type="text/css">
        .contain
        {
            position:relative;
            top:100px;
            left:500px;
            }
         p
         {
             color: #f06292;
             }
             footer
             {
                position:absolute;
                top:80%;
               }
               #lblResult,#phoneNumRegLab
               {
                   color:#f06292;
                   }
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
                    position:absolute;
                    left:4em;
                    top:20em;
            
                    }
    </style>
    <script type="text/javascript" src="js/jquery.js">
       
    </script>
</head>
<body style=" background-image:url(BGPicture.jpg)">

    <form id="form1" runat="server">
    <div>
        <!--navbar-->
         <div class="navbar navbar-fixed-top">
              <div class="navbar-inner ">
                <div class="container">
                  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <a class="brand" href="Index.aspx">itszjypolly</a>
                  <div class="nav-collapse collapse">
                    <ul class="nav">
                      <li class="active"><a href="Index.aspx">Home</a></li>
                      <li><a href="About.aspx">关于</a></li>
                    </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
            </div>

         <div class="contain">
            <p>用户名</p>
            <asp:TextBox runat="server" ID="username"  placeholder="用户名不能为空"></asp:TextBox>
            <p>密码：</p>
            <asp:TextBox runat="server" ID="password"  placeholder="密码不能为空"></asp:TextBox>
            <p>邮箱：</p>
            <asp:TextBox runat="server" ID="email"></asp:TextBox>
             <asp:Label ID="lblResult" runat="server"></asp:Label>
            <p>电话号码：</p>
            <asp:TextBox runat="server" ID="phoneNum" ></asp:TextBox>
             <asp:Label ID="phoneNumRegLab" runat="server"></asp:Label>
            <asp:Button ID="signUp" runat="server" Text="注册" onclick="signUp_Click"/>
         </div>
         <footer id="footer-section">
          <div class="container">
            <div class="footer-logo-copyright footer-not-logo">
              <div id="footer-copyright">
                <p>© itszjypolly | 2017</p>
              </div>
              </div>
            </div>
        </footer>

    </div>
    </form>
</body>
</html>
