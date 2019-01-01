<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bgindex.aspx.cs" Inherits="Manage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link type="image/x-icon" rel="shortcut icon" href="favicon.ico" />
    <link href="css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet"/>
    <title>信息管理</title>
    <style type="text/css">
        #GridView1
        {
           margin-top:100px; 
            }
       
        {
            color:#f06292;
            }
    </style>
</head>
<body style=" background-image:url(BGPicture.jpg)">
    <form id="form1" runat="server">
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
                      <li><a href="Regsiter.aspx">管理</a></li>
                    </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
            </div>
     
      
      <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" 
          SelectCommand="SELECT * FROM [personalInfo]"></asp:SqlDataSource>--%>
    <center>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" DataKeyNames="ID" Height="157px" 
             Width="669px" BorderColor="#9B9F9E" BorderWidth="1px" 
             Font-Names="Simplified Arabic" Font-Size="Medium">
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="ID" HeaderText="ID" 
                     SortExpression="ID" InsertVisible="False" ReadOnly="True" HeaderStyle-ForeColor="#F06292" />
                 <asp:BoundField DataField="username" HeaderText="用户名" 
                     SortExpression="username"  HeaderStyle-ForeColor="#F06292" />
                 <asp:BoundField DataField="password" HeaderText="密码" 
                     SortExpression="password" HeaderStyle-ForeColor="#F06292" />
                 <asp:BoundField DataField="email" HeaderText="邮箱" 
                     SortExpression="email" HeaderStyle-ForeColor="#F06292" />
                 <asp:BoundField DataField="phoneNum" HeaderText="手机号" 
                     SortExpression="phoneNum" HeaderStyle-ForeColor="#F06292" />
             </Columns>
      </asp:GridView>
      
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:TestDBConnectionString %>" 
             SelectCommand="SELECT * FROM [personalInfo]" 
             ConflictDetection="CompareAllValues" 
             DeleteCommand="DELETE FROM [personalInfo] WHERE [ID] = @original_ID AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phoneNum] = @original_phoneNum) OR ([phoneNum] IS NULL AND @original_phoneNum IS NULL))" 
             InsertCommand="INSERT INTO [personalInfo] ([username], [password], [email], [phoneNum]) VALUES (@username, @password, @email, @phoneNum)" 
             OldValuesParameterFormatString="original_{0}" 
             UpdateCommand="UPDATE [personalInfo] SET [username] = @username, [password] = @password, [email] = @email, [phoneNum] = @phoneNum WHERE [ID] = @original_ID AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phoneNum] = @original_phoneNum) OR ([phoneNum] IS NULL AND @original_phoneNum IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_ID" Type="Int32" />
                 <asp:Parameter Name="original_username" Type="String" />
                 <asp:Parameter Name="original_password" Type="String" />
                 <asp:Parameter Name="original_email" Type="String" />
                 <asp:Parameter Name="original_phoneNum" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="username" Type="String" />
                 <asp:Parameter Name="password" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="phoneNum" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="username" Type="String" />
                 <asp:Parameter Name="password" Type="String" />
                 <asp:Parameter Name="email" Type="String" />
                 <asp:Parameter Name="phoneNum" Type="String" />
                 <asp:Parameter Name="original_ID" Type="Int32" />
                 <asp:Parameter Name="original_username" Type="String" />
                 <asp:Parameter Name="original_password" Type="String" />
                 <asp:Parameter Name="original_email" Type="String" />
                 <asp:Parameter Name="original_phoneNum" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
      
    </center>
      
     
      
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
      
      
     
      
     
      
     
      
    </form>
    </body>
</html>
