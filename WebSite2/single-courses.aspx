<%@ Page Language="C#" AutoEventWireup="true" CodeFile="single-courses.aspx.cs" Inherits="single_courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>全部课程-课程详细信息</title>

    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css"/>

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css"/>

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css"/>

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css"/>

    <!-- Styles -->
    <link rel="stylesheet" href="style.css"/>
</head>
<body class="courses-page">
    <form id="form1" runat="server">
        <div class="page-header">
            <header class="site-header">
                <div class="top-header-bar">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                                <div class="header-bar-email d-flex align-items-center">
                                    <i class="fa fa-envelope"></i><a href="#">xxgk@hubu.edu.cn</a>
                                </div>
                                <!-- .header-bar-email -->

                                <div class="header-bar-text lg-flex align-items-center">
                                    <p><i class="fa fa-phone"></i>027-88664102 </p>
                                </div>
                                <!-- .header-bar-text -->
                            </div>
                            <!-- .col -->

                            <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                                <div class="header-bar-search">
                                    <form class="flex align-items-stretch">
                                        <input type="search" placeholder="What would you like to learn?">
                                        <button type="submit" value=""><i class="fa fa-search"></i></button>
                                    </form>
                                </div>
                                <!-- .header-bar-search -->

                                <div class="header-bar-menu">
                                    <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                        <li><a href="login.aspx" target="_blank">登录</a></li>
                                    </ul>
                                </div>
                                <!-- .header-bar-menu -->
                            </div>
                            <!-- .col -->
                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .container-fluid -->
                </div>
                <!-- .top-header-bar -->
       
        <div class="nav-bar">
            <div class="container">
                <div class="row">
                    <div class="col-9 col-lg-3">
                        <div class="site-branding">
                            <img src="images/new_logo2.png" title="湖北大学">
                        </div>
                        <!-- .site-branding -->
                    </div>
                    <!-- .col -->

                    <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                        <nav class="site-navigation flex justify-content-end align-items-center">
                            <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                <li><a href="Default.aspx">首页</a></li>
                                <li><a href="#">关于</a></li>
                                <li class="current-menu-item"><a href="courses.aspx">课程</a></li>
                                <li><a href="#">记录</a></li>
                                <li><a href="#">联系</a></li>
                            </ul>

                            <div class="hamburger-menu d-lg-none">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            <!-- .hamburger-menu -->

                            <div class="header-bar-cart">
                                <a href="#" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
                            </div>
                            <!-- .header-bar-search -->
                        </nav>
                        <!-- .site-navigation -->
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .nav-bar -->
        </header>
            <!-- .site-header -->

        <div class="page-header-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <header class="entry-header">
                            <!-- <h1>精选课程</h1> -->
                        </header>
                        <!-- .entry-header -->
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .page-header-overlay -->
        </div>
        <!-- .page-header -->

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumbs">
                        <ul class="flex flex-wrap align-items-center p-0 m-0">
                            <li><a href="Default.aspx"><i class="fa fa-home"></i>首页</a></li>
                            <li><a href="courses.aspx">课程</a></li>
                            <li></i> 课程详细信息</a></li>
                        </ul>
                    </div>
                    <!-- .breadcrumbs -->
                </div>
                <!-- .col -->
            </div>
            <!-- .row -->

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="featured-courses courses-wrap">
                        <div class="row mx-m-25">

                            <asp:Label ID="lblAccept" runat="server" Text="Label"></asp:Label>

                          <asp:DataList ID="Datli_Single" runat="server" RepeatColumns="4" Style="margin-right: 45px" RepeatDirection="Horizontal" DataKeyField="课程编号" DataSourceID="odsDetail">
                                <ItemTemplate>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-12 offset-lg-1 col-lg-10">
                                            </div>
                                            <!-- .col -->
                                        </div>
                                        <!-- .row -->

                                        <div class="row">
                                            <div class="col-12 offset-lg-1 col-lg-1">
                                            </div>
                                            <!-- .col -->

                                            <div class="col-12 col-lg-8">
                                                <div class="instructors-info">
                                                    <header class="entry-heading">
                                                        <h2 class="entry-title">课程详细信息</h2>
                                                    </header>
                                                    <!-- .entry-heading -->

                                                    <div class="instructor-short-info flex flex-wrap"  style="width: 850px;float:left">
                                                        <div class="instructors-stats">
                                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("课程用书图片路径")%>' Style="margin-right: 0px" Width="209px" Height="229px" />

                                                            <ul class="p-0 m-0 mt-3">
                                                                <li><i class="fa fa-user"></i>&nbsp;<asp:Label ID="课程编号Label" runat="server" Text='<%# Eval("课程编号") %>' />
                                                                    <br />
                                                                </li>
                                                                <li><i class="fa fa-star"></i>课程学分:<asp:Label ID="课程学分Label" runat="server" Text='<%# Eval("课程学分") %>' />
                                                                    <br />
                                                                </li>
                                                              
                                                                <li><i class="fa fa-comment"></i>课程类型名:<asp:Label ID="课程类型名Label" runat="server" Text='<%# Eval("课程类型名") %>' />
                                                                    <br />
                                                                </li>
                                                                <li><i class="fa fa-comment"></i>上课地点:<asp:Label ID="上课地点Label" runat="server" Text='<%# Eval("上课地点") %>' />
                                                                    <br />
                                                                </li>
                                                                <li><i class="fa fa-comment"></i>学时:<asp:Label ID="学时Label" runat="server" Text='<%# Eval("课程学时") %>' />
                                                                    <br />
                                                                </li>
                                                                <li><i class="fa fa-comment"></i>课程用书名:
                                                                    <asp:Label ID="课程用书名Label" runat="server" Text='<%# Eval("课程用书名") %>' /><br />
                                                                </li>
                                                            </ul>
                                                            <div class="addByMyself">
                                                                <br />
                                                                <a class="btn" href="#">添加收藏</a>
                                                            </div>
                                                        </div>

                                                        <div class="instructors-details" style="width: 400px">

                                                            <h2 class="entry-title mt-3">课程名:
                                                                <asp:Label ID="课程名Label" runat="server" Text='<%# Eval("课程名") %>' />
                                                                <br />
                                                            </h2>

                                                            <div class="course-teacher mt-3" style="width: 400px">
                                                                <h4>
                                                                开设学院名:
                                                                <asp:Label ID="开设学院名Label" runat="server" Text='<%# Eval("开设学院名") %>' /></h4>
                                                                <br />
                                                            </div>
                                                            <!-- .course-teacher -->

                                                            <div class="entry-content mt-3" style="width: 800px">
                                                                <h4>课程描述:</h4> 
                                                                <br/>
                                                                &nbsp;&nbsp;&nbsp;
                                                                &nbsp;&nbsp;&nbsp;
                                                                <asp:Label ID="课程描述Label" runat="server" Text='<%# Eval("课程描述") %>' />
                                                            </div>
                                                            <!-- .entry-content -->
                                                        </div>
                                                        <!-- .instructors-details -->
                                                    </div>
                                                    <!-- .instructor-short-info -->
                                                </div>
                                                <!-- .instructors-info -->
                                            </div>
                                            <!-- .col -->
                                        </div>
                                        <!-- .row -->
                                    </div>
                                    <!-- .container -->

                                    <br />

                                    <br />
                                 </ItemTemplate>
                            </asp:DataList>

                            <asp:ObjectDataSource ID="odsDetail" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCourseID" TypeName="MainDataSetTableAdapters.课程TableAdapter" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_课程编号" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="课程编号" Type="String" />
                                    <asp:Parameter Name="课程名" Type="String" />
                                    <asp:Parameter Name="开设学院名" Type="String" />
                                    <asp:Parameter Name="课程学时" Type="Int32" />
                                    <asp:Parameter Name="课程用书图片路径" Type="String" />
                                    <asp:Parameter Name="课程描述" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblAccept" Name="课程编号" PropertyName="Text" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="课程名" Type="String" />
                                    <asp:Parameter Name="开设学院名" Type="String" />
                                    <asp:Parameter Name="课程学时" Type="Int32" />
                                    <asp:Parameter Name="课程用书图片路径" Type="String" />
                                    <asp:Parameter Name="课程描述" Type="String" />
                                    <asp:Parameter Name="Original_课程编号" Type="String" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>

                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .featured-courses -->
                </div>
            </div>
        </div>
    <div class="clients-logo">
        <div class="container">
            <div class="row">
                <div class="col-12 flex flex-wrap justify-content-center justify-content-lg-between align-items-center">
                    <div class="logo-wrap">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div><!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div><!-- .logo-wrap -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .clients-logo -->
	
	
    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                            <a class="foot-logo" href="#"><img src="images/foot-logo.png" alt=""></a>

                            <p>面向未来，学校将立足湖北、服务地方、辐射全国、走向世界，在“十三五”末期，力争实现若干核心指标进入全国高校前100名 </p>


                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>联系我们</h2>

                            <ul>
                                <li>邮政编码：430062</li>
                                <li>电话：88664102</li>
                                <li>地址：湖北省武汉市武昌区友谊大道368号</li>
                            </ul>
                        </div><!-- .foot-contact -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                        <div class="quick-links flex flex-wrap">
                            <h2 class="w-100">Quick Links</h2>

                            <ul class="w-50">
                                <li><a href="#">About </a></li>
                                <li><a href="#">Terms of Use </a></li>
                                <li><a href="#">Privacy Policy </a></li>
                                <li><a href="#">Contact Us</a></li>
                            </ul>

                            <ul class="w-50">
                                <li><a href="#">Documentation</a></li>
                                <li><a href="#">Forums</a></li>
                                <li><a href="#">Language Packs</a></li>
                                <li><a href="#">Release Status</a></li>
                            </ul>
                        </div><!-- .quick-links -->
                    </div><!-- .col -->
                            <p class="footer-copyright">
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                版权所有湖北大学<a href="http://www.hubu.edu.cn/index.htm" target="_blank" title="湖北大学">湖北大学</a>  
                            </p>
                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                        
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->

    </footer><!-- .site-footer -->

    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>
    </form>
</body>
</html>
