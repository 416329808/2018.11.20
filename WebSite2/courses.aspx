<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>全部课程</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- ElegantFonts CSS -->
    <link rel="stylesheet" href="css/elegant-fonts.css">

    <!-- themify-icons CSS -->
    <link rel="stylesheet" href="css/themify-icons.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
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
                            <li>课程</li>
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

                            <div align="center">
                                <asp:DataList ID="Datli_All" runat="server" RepeatColumns="3"  Style="margin-top: 155px" CellPadding="0" DataKeyField="课程编号" Width="360px">

                                    <ItemTemplate>
        <a href='single-courses.aspx?课程编号=<%# DataBinder.Eval(Container.DataItem,"课程编号") %>'>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("课程用书图片路径")%>' CommandName="update" align="center" Width="159px" Height="165px" />
                                  </a>
                                        <br />
                                        课程编号:
                <asp:Label ID="课程编号Label" runat="server" Font-Underline="False" ForeColor="#404040" CommandName="update" Width="270px"><%# DataBinder.Eval(Container.DataItem,"课程编号") %></asp:Label>
                                        <br />
                                        课程名:
                <asp:Label ID="课程名Label" runat="server" Text='<%# Eval("课程名") %>' />
                                        <br />
                                        开设学院名:
                <asp:Label ID="开设学院名Label" runat="server" Text='<%# Eval("开设学院名") %>' />
                                        <br />
                                        学时:
                <asp:Label ID="学时Label" runat="server" Text='<%# Eval("课程学时") %>' />
                                        <br />

                                        <!--  课程用书图片路径:
                    <asp:Label ID="课程用书图片路径Label" runat="server" Text='<%# Eval("课程用书图片路径") %>' />
                    <br />
                    <br />
                    -->
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>


                                <asp:Label ID="lblCount" runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="lblPageCount" runat="server" Text="Label"></asp:Label>
                                <asp:LinkButton ID="lbtnFirst" runat="server" OnClick="lbtnFirst_Click">首页</asp:LinkButton>
                                <asp:LinkButton ID="lbtnPre" runat="server" OnClick="lbtnPre_Click">上一页</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">1</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">2</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">3</asp:LinkButton>
                                <asp:LinkButton ID="lbtnNext" runat="server" OnClick="lbtnNext_Click">下一页</asp:LinkButton>
                                <asp:LinkButton ID="lbtnLast" runat="server" OnClick="lbtnLast_Click">末页</asp:LinkButton>
                                <!--<asp:DropDownList ID="ddl3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LinkButton2_Click" ></asp:DropDownList>-->


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebConnectionString %>" SelectCommand="SELECT [课程编号], [课程名], [开设学院名], [学时], [课程用书图片路径] FROM [Course]"></asp:SqlDataSource>
                            </div>
                        </div>


                        <!-- .row -->
                    </div>
                    <!-- .featured-courses -->

                    <div class="pagination flex flex-wrap justify-content-between align-items-center">
                        <div class="col-12 col-lg-4 order-2 order-lg-1 mt-3 mt-lg-0">
                            <ul class="flex flex-wrap align-items-center order-2 order-lg-1 p-0 m-0">
                                <!--                          <li class="active"><a href="#">1</a></li>
                            <li><a href="courses-secondPage.aspx">2</a></li>
                            <li><a href="#">3</a></li>
                            -->
                            </ul>
                        </div>

                        <!-- <div class="col-12 flex justify-content-start justify-content-lg-end col-lg-8 order-1 order-lg-2">
                        <div class="pagination-results flex flex-wrap align-items-center">
                            <p class="m-0">Showing 1–3 of 12 results</p>

                            <form>
                                <select>
                                    <option>Show: 06</option>
                                    <option>Show: 12</option>
                                    <option>Show: 18</option>
                                    <option>Show: 24</option>
                                </select>
                            </form>
                        </div>
					</div>
						<!-- .pagination-results -->

                    </div>
                    <!-- .pagination -->
                </div>
                <!-- .col -->

                <div class="col-12 col-lg-4">
                    <div class="sidebar">
                        <div class="search-widget">
                        
                            <form class="flex flex-wrap align-items-center" />
                            <input type="search" placeholder="Search..." />
                            <button type="submit" class="flex justify-content-center align-items-center"><i class="fa fa-search"></i></button>
                            </form>
    <!-- .flex -->
                        </div>
    <div class="cat-links">
        <h2>目录</h2>

        <ul class="p-0 m-0">
            <li><a href="courses-compulsory.aspx">通识教育必修</a></li>
            <li><a href="#">专业必修</a></li>
            <li><a href="#">学科基础必修</a></li>
            <li><a href="#">专业选修</a></li>
            <li><a href="#">公共选修</a></li>
            <li><a href="#">实践教育必修</a></li>
        </ul>
    </div>
    <!-- .cat-links -->

    <div class="latest-courses">
        <h2>最新课程</h2>

        <ul class="p-0 m-0">
            <li class="flex flex-wrap justify-content-between align-items-center">
                <img src="images/10.png" alt="">

                <div class="content-wrap">
                    <h3><a href="#">Java程序设计</a></h3>

                    <div class="course-cost free-cost">计信学院</div>
                </div>
                <!-- .content-wrap -->
            </li>

            <li class="flex flex-wrap justify-content-between align-items-center">
                <img src="images/10.png" alt="">

                <div class="content-wrap">
                    <h3><a href="#">Java程序设计</a></h3>

                    <div class="course-cost free-cost">计信学院</div>
                </div>
                <!-- .content-wrap -->
            </li>

            <li class="flex flex-wrap justify-content-between align-items-center">
                <img src="images/10.png" alt="">

                <div class="content-wrap">
                    <h3><a href="#">Java程序设计</a></h3>

                    <div class="course-cost free-cost">计信学院</div>
                </div>
                <!-- .content-wrap -->
            </li>

            <li class="flex flex-wrap justify-content-between align-items-center">
                <img src="images/10.png" alt="">

                <div class="content-wrap">
                    <h3><a href="#">Java程序设计</a></h3>

                    <div class="course-cost free-cost">计信学院</div>
                </div>
                <!-- .content-wrap -->
            </li>

        </ul>
    </div>
    <!-- .latest-courses -->

    <div class="ads">
        <img src="images/ads.jpg" alt="">
    </div>
    <!-- .ads -->

    <div class="popular-tags">
        <h2>热点标签</h2>

        <ul class="flex flex-wrap align-items-center p-0 m-0">
            <li><a href="#">Web程序设计</a></li>
            <li><a href="#">数据库</a></li>
            <li><a href="#">中国近代史</a></li>
            <li><a href="#">材料化学</a></li>
            <li><a href="#">马克思主义基本原理</a></li>
            <li><a href="#">国学品读</a></li>
        </ul>
    </div>
    <!-- .popular-tags -->
                        </div><!-- .sidebar -->
                   </div><!-- .col -->
             </div><!-- .row -->
    </div><!-- .container -->



    <footer class="site-footer" >
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
                            <h2 class="w-100" align="center">Quick Links</h2>

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
