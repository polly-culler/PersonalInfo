<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>关于</title>
    <link type="image/x-icon" rel="shortcut icon" href="favicon.ico" />
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
--%>   
    <link rel="Stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link href="css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet"/>
    <style type="text/css">
        .main
        {
            position:absolute;
            top:53px;
            left:18em;
            width:500px;
            
            }            
       .card 
       {
            
           
            display: -ms-flexbox;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid  #efefef;
            border-radius: .25rem;
        } 
        .mb-3, .my-3 {
            margin-bottom: 1rem!important;
        }
        .border-success {
            border-color: #efefef;
        }
        .card-header:first-child {
            border-radius: calc(.25rem - 1px) calc(.25rem - 1px) 0 0;
        }
        .bg-transparent {
            background-color: transparent!important;
        }
        .card-header {
            padding: .75rem 1.25rem;
            margin-bottom: 0;
            background-color: rgba(0,0,0,.03);
            border-bottom: 1px solid rgba(0,0,0,.125);
        }
        .card-footer {
            padding: .75rem 1.25rem;
            margin-bottom: 0;
            background-color: rgba(0,0,0,.03);
            border-bottom: 1px solid rgba(0,0,0,.125);
        }
        
        /* personal menu  */
        .me
        {
           width:293px;
           height:373px;
           position:fixed;
           left:60em;
           top:5em;
            }
         #meHeaderImg
         {
             position:relative;
             }
         
        ._0v2O4 {
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            margin-left: 14px;
            -webkit-box-orient: vertical;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
            position:absolute;
            left:4em;
            top:0;
        }
        .f5Yes
        {
            line-height:0px;
            color:#999;
            }
        .meAbout
        {
            height:322px;
            width:293px;
            display:block;
            border: 1px solid #e6e6e6;
            }
       .meHeaderTitle
       {
           width:211px;
           height:28px;
           margin-top:14px;
           margin-left:10px;
           color:#999;
           
           }
        .meAboutDetail
        {
            width:284px;
            height:282px;
            margin-left:10px;
            overflow:auto;
            color:#000;
            font-weight:bold;
            }
            #meAboutDetailName,
            #meAboutDetailMajor
            {
                height:30px;
                line-height:30px;
                display:block;
                border-bottom:1px solid #e6e6e6;
                }
                ##meAboutDetailSchool
                {
                    height:90px;
                    line-height:30px;
                    display:block;
                    border-bottom:1px solid #e6e6e6;
                    }
                    #cdtc,#suse
                    {
                        color:#999;
                        }
                    #meAboutDetailBlog
                    {
                        height:50px;
                        
                        }
                        #meAboutDetailBlogGithub 
                        {
                            height:60px;
                            }
                      
                            #github,
                            #instagram,
                            #spotify
                            {
                                width:30px;
                                height:30px;         
                                }
                            #meAboutDetailBlogLife
                            {
                                height:20px;
                                }
            
            ._6q-tv {
                height: 100%;
                width: 100%;
                width: 30px; 
                height: 30px;
                border-radius:50%;
            }
            #footer-section
            {
                position: absolute;
                top:407px;
                left:81px;
                
            }
            .card-footer
            {
                height:100px;
                }
                #label1
                {
                    width:24px;
                    height:24px;
                    }
                #label2
                {
                    width:30px;
                    height:30px;
                    margin-left:10px;
                    }
                    #label3
                    {
                        width:24px;
                        height:24px;
                        margin-left:10px;
                        }
                        #label4
                        {
                            width:30px;
                            height:30px;
                            margin-left:314px;
                            }
                            .cardDetailName ul
                            {
                                list-style:none;
                                display:block;
                                float:left;
                                margin:0;
                                }
                                .cardDetailName ul li h5
                                {
                                    
                                    margin-left=-28px;
                                    }
                                    #common
                                    {
                                         width:500px;
                                        }
    </style>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body> <%--style=" background-image:url(about.jpg);"--%>
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
                    </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
            </div>
      
       
       <div class="main">
          <div class="card border-success mb-3" style="max-width: 31rem;">
                  <div class="card-header bg-transparent border-success">
                    <img class="_6q-tv" src="https://scontent-sof1-1.cdninstagram.com/vp/8a1880f67a523b7c6e0f2dd6b114df6f/5CADA316/t51.2885-19/s150x150/41445805_166470714274926_1479956287507660800_n.jpg?_nc_ht=scontent-sof1-1.cdninstagram.com" />
                      <asp:Label ID="headName1" runat="server" >insUGM</asp:Label>

                  </div>
                  <div class="card-body text-success">
                    <img src="images/indo2.jpg" alt="#"/>
                  </div>
                  <div class="card-footer bg-transparent border-success">
                    <section class="ltpMr Slqrh">
                        <span class="fr66n">
                           <img id="label1" src="images/label1.png" alt="label1"/>
                        </span>
                        <span class="_15y0l">
                            <img id="label2" src="images/label2.png" alt="label2"/>
                        </span>
                        <span class="_5e4p">
                            <img id="label3" src="images/label3.png" alt="label3"/>
                        </span>
                        <span class="wmtNn">
                            <img id="label4" src="images/label4.png" alt="label4"/>
                        </span>
                    </section>
                    <div class="cardDetailName">
                       <ul>
                        <li><h5>insUGM</h5></li>
                        <li id="common">Finally... #universitätheidelberg#universitätheidelberg 🌿🌱</li>
                       </ul>
                        
                    </div>
                  </div>
                </div>
           
       
             <div class="card border-success mb-3" style="max-width: 31rem;">
                  <div class="card-header bg-transparent border-success">
                    <img class="_6q-tv" src="https://scontent-frx5-1.cdninstagram.com/vp/c1a201eca9bd1f9639c20c0fac343317/5C94E0DE/t51.2885-15/e35/c0.80.1080.1080/s150x150/42520762_243748326318776_3305675479614262558_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com" />
                      <asp:Label ID="headName2" runat="server" >#universitätheidelberg</asp:Label>

                  </div>
                  <div class="card-body text-success">
                    <img src="images/indo1.jpg" alt="#"/>
                  </div>
                  <div class="card-footer bg-transparent border-success">
                    <section class="ltpMr Slqrh">
                        <span class="fr66n">
                           <img id="label1" src="images/label1.png" alt="label1"/>
                        </span>
                        <span class="_15y0l">
                            <img id="label2" src="images/label2.png" alt="label2"/>
                        </span>
                        <span class="_5e4p">
                            <img id="label3" src="images/label3.png" alt="label3"/>
                        </span>
                        <span class="wmtNn">
                            <img id="label4" src="images/label4.png" alt="label4"/>
                        </span>
                    </section>
                    <div class="cardDetailName">
                       <ul>
                        <li><h5>#universitätheidelberg</h5></li>
                        <li id="common">😂</li>
                       </ul>
                        
                    </div>
                  </div>
                </div>
           
             <div class="card border-success mb-3" style="max-width: 31rem;">
                  <div class="card-header bg-transparent border-success">
                    <img class="_6q-tv" src="https://scontent-frx5-1.cdninstagram.com/vp/72eac9a7defd24b2bbe7a6a12bf52deb/5CAD4CE8/t51.2885-19/s150x150/13597791_261499887553333_1855531912_a.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com" />
                      <asp:Label ID="headName3" runat="server" >natgoe</asp:Label>

                  </div>
                  <div class="card-body text-success">
                    <img src="images/indo3.jpg" alt="#"/>
                  </div>
                  <div class="card-footer bg-transparent border-success">
                    <section class="ltpMr Slqrh">
                        <span class="fr66n">
                           <img id="label1" src="images/label1.png" alt="label1"/>
                        </span>
                        <span class="_15y0l">
                            <img id="label2" src="images/label2.png" alt="label2"/>
                        </span>
                        <span class="_5e4p">
                            <img id="label3" src="images/label3.png" alt="label3"/>
                        </span>
                        <span class="wmtNn">
                            <img id="label4" src="images/label4.png" alt="label4"/>
                        </span>
                    </section>
                    <div class="cardDetailName">
                       <ul>
                        <li><h5>natgoe</h5></li>
                        <li id="common">💚🌿😍</li>
                       </ul>
                        
                    </div>
                  </div>
                </div>
           
        
         <div class="card border-success mb-3" style="max-width: 31rem;">
                  <div class="card-header bg-transparent border-success">
                    <img class="_6q-tv" src="https://scontent-frx5-1.cdninstagram.com/vp/21174e11ec04c30ba25a426b7228ae13/5C92D3D4/t51.2885-19/s150x150/32047377_452953295156688_2566757616701145088_n.jpg" />
                      <asp:Label ID="headName4" runat="server" >laplantadesign</asp:Label>

                  </div>
                  <div class="card-body text-success">
                    <img src="images/indo4.jpg" alt="#"/>
                  </div>
                  <div class="card-footer bg-transparent border-success">
                    <section class="ltpMr Slqrh">
                        <span class="fr66n">
                           <img id="label1" src="images/label1.png" alt="label1"/>
                        </span>
                        <span class="_15y0l">
                            <img id="label2" src="images/label2.png" alt="label2"/>
                        </span>
                        <span class="_5e4p">
                            <img id="label3" src="images/label3.png" alt="label3"/>
                        </span>
                        <span class="wmtNn">
                            <img id="label4" src="images/label4.png" alt="label4"/>
                        </span>
                    </section>
                    <div class="cardDetailName">
                       <ul>
                        <li><h5>laplantadesign</h5></li>
                        <li id="common">🔥🔥🙌</li>
                       </ul>
                        
                    </div>
                  </div>
                </div>
           
      </div>

       <div class="me">
        <div class="meHeader">
            <img id="meHeaderImg" src="https://scontent-amt2-1.cdninstagram.com/vp/54b00666ab01cb8bc8eaf5f565c9a730/5C935E4B/t51.2885-19/s150x150/23416552_543591579309448_1291123506263621632_n.jpg" style="width: 50px; height: 50px;"/>
            <div class="_0v2O4">
                <div class="SKguc">
                    <h5>itszjypolly</h5>
                </div>
            <div class="f5Yes oL_O8">🇨🇳   Chengdu👉Yibin</div>
        </div>
        <div class="meAbout">
            <div class="meHeaderTitle">
                <p>关于</p>
            </div>
            <div class="meAboutDetail">
                <div id="meAboutDetailName">itszjypolly</div>
                <div id="meAboutDetailMajor">计算机技术与科学[CS]</div>
                <div id="meAboutDetailSchool">
                    <p id="school">学校：</p>
                    <p id="cdtc">成都纺织高等专科学校[CDTC]</p>
                    <p id="suse">四川轻化工大学[SUSE]</p>
                </div>
                <div id="meAboutDetailBlog">
                    
                    <div id="meAboutDetailBlogGithub">
                        <p>项目：</p>
                        <a href="https://github.com/polly-culler" target="_blank">
                            <img id="github" src="images/github.png" alt="github"/>
                        </a>
                    </div>
                    <div id="meAboutDetailBlogLife">
                        <p>生活:</p>
                        <a href="https://www.instagram.com/zjypolly/" target="_blank">
                            <img id="instagram" src="images/instagram.png" alt="instagram"/>
                        </a>
                        <a href="https://open.spotify.com/playlist/6FWgXoFkd4iBk083JxMK8w" target="_blank">
                            <img id="spotify" src="images/social-spotify.png" alt="spotify"/>
                        </a>

                    </div>
                </div>
            </div>
        </div>
       </div>
        <div id="footer-section">
          
            <div class="footer-logo-copyright footer-not-logo">
              <div id="footer-copyright">
                <p>© itszjypolly | 2017</p>
              </div>
                <p class="pull-center">
                  <a href="#">Back to top</a>
                </p>
            </div>
         
        </div>   
       </div>
</form>
   

</body>
</html>
