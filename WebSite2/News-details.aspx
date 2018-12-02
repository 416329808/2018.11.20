<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News-details.aspx.cs" Inherits="News_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>全部资讯-资讯详细信息</title>

    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css" />

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css" />

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css" />

    <!-- Styles -->
    <link rel="stylesheet" href="style.css" />
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
                            <li><a>湖大要闻</a></li>
                            <li></i>要闻详述</a></li>
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

                            <asp:DataList ID="Datli_News" runat="server" RepeatColumns="4" Style="margin-right: 45px" RepeatDirection="Horizontal" DataKeyField="资讯ID">
                                <ItemTemplate>

                                    <br />
                                    <br />
                                    <div align="center">
                                        <h4>
                                            <asp:Label ID="标题Label" runat="server" Text='<%# Eval("标题") %>' /></h4>
                                        <br />
                                        发布时间:
                                        <asp:Label ID="发布时间Label" runat="server" Text='<%# Eval("发布时间") %>' />
                                    </div>
                                    <br />
                                    <div class="instructor-short-info flex flex-wrap" style="width: 350px; height: 900px; float: left">
                                        <div class="instructors-stats">
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("图片")%>' Style="margin-right: 0px" Width="300px" Height="300px" />
                                        </div>
                                        <br />
                                    </div>
                                    <div class="entry-content mt-3" style="width: 1100px">
                                        <h5>要闻详述:</h5>
                                        &nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="内容Label" runat="server" Text='<%# Eval("内容") %>' />
                                    </div>

                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:ObjectDataSource ID="Ods_News" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" TypeName="MainDataSetTableAdapters.资讯TableAdapter" UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_资讯ID" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="资讯ID" Type="String" />
                                    <asp:Parameter Name="发布时间" Type="DateTime" />
                                    <asp:Parameter Name="标题" Type="String" />
                                    <asp:Parameter Name="图片" Type="String" />
                                    <asp:Parameter Name="内容" Type="String" />
                                    <asp:Parameter Name="预留字段1" Type="String" />
                                    <asp:Parameter Name="预留字段2" Type="String" />
                                    <asp:Parameter Name="预留字段3" Type="String" />
                                    <asp:Parameter Name="预留字段4" Type="String" />
                                    <asp:Parameter Name="预留字段5" Type="String" />
                                    <asp:Parameter Name="预留字段6" Type="String" />
                                    <asp:Parameter Name="预留字段7" Type="String" />
                                    <asp:Parameter Name="预留字段8" Type="String" />
                                    <asp:Parameter Name="预留字段9" Type="String" />
                                    <asp:Parameter Name="预留字段10" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="资讯ID" QueryStringField="资讯ID" Type="String" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="发布时间" Type="DateTime" />
                                    <asp:Parameter Name="标题" Type="String" />
                                    <asp:Parameter Name="图片" Type="String" />
                                    <asp:Parameter Name="内容" Type="String" />
                                    <asp:Parameter Name="预留字段1" Type="String" />
                                    <asp:Parameter Name="预留字段2" Type="String" />
                                    <asp:Parameter Name="预留字段3" Type="String" />
                                    <asp:Parameter Name="预留字段4" Type="String" />
                                    <asp:Parameter Name="预留字段5" Type="String" />
                                    <asp:Parameter Name="预留字段6" Type="String" />
                                    <asp:Parameter Name="预留字段7" Type="String" />
                                    <asp:Parameter Name="预留字段8" Type="String" />
                                    <asp:Parameter Name="预留字段9" Type="String" />
                                    <asp:Parameter Name="预留字段10" Type="String" />
                                    <asp:Parameter Name="Original_资讯ID" Type="String" />
                                </UpdateParameters>
                            </asp:ObjectDataSource>

                        </div>
                        <!-- .row -->
                    </div>
                    <!-- .featured-courses -->
                </div>
            </div>
        </div>
    </form>
    <div class="clients-logo">
        <div class="container">
            <div class="row">
                <div class="col-12 flex flex-wrap justify-content-center justify-content-lg-between align-items-center">
                    <div class="logo-wrap">
                    </div>
                    <!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div>
                    <!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div>
                    <!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div>
                    <!-- .logo-wrap -->

                    <div class="logo-wrap">
                    </div>
                    <!-- .logo-wrap -->
                </div>
                <!-- .col -->
            </div>
            <!-- .row -->
        </div>
        <!-- .container -->
    </div>
    <!-- .clients-logo -->


    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                            <a class="foot-logo" href="#">
                                <img src="images/foot-logo.png" alt=""></a>

                            <p>面向未来，学校将立足湖北、服务地方、辐射全国、走向世界，在“十三五”末期，力争实现若干核心指标进入全国高校前100名 </p>


                        </div>
                        <!-- .foot-about -->
                    </div>
                    <!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>联系我们</h2>

                            <ul>
                                <li>邮政编码：430062</li>
                                <li>电话：88664102</li>
                                <li>地址：湖北省武汉市武昌区友谊大道368号</li>
                            </ul>
                        </div>
                        <!-- .foot-contact -->
                    </div>
                    <!-- .col -->

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
                        </div>
                        <!-- .quick-links -->
                    </div>
                    <!-- .col -->
                    <p class="footer-copyright">
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        版权所有湖北大学<a href="http://www.hubu.edu.cn/index.htm" target="_blank" title="湖北大学">湖北大学</a>
                    </p>
                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-lg-0">
                    </div>
                    <!-- .col -->
                </div>
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .footer-widgets -->

    </footer>
    <!-- .site-footer -->

    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>
    </form>
</body>
</html>

