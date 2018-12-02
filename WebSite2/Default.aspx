<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生成绩管理系统</title>
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
<body>
    <form id="form1" runat="server">
        <div class="hero-content">
        <header class="site-header">
            <div class="top-header-bar">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-6 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                            <div class="header-bar-email d-flex align-items-center">
                                <i class="fa fa-envelope"></i><a href="#">xxgk@hubu.edu.cn </a>
                            </div><!-- .header-bar-email -->

                            <div class="header-bar-text lg-flex align-items-center">
                                <p><i class="fa fa-phone"></i>027-88664102 </p>
                            </div><!-- .header-bar-text -->
                        </div><!-- .col -->

                        <div class="col-12 col-lg-6 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                            <div class="header-bar-search">
                                <form class="flex align-items-stretch">
                                    <input type="search" placeholder="What would you like to learn?" >
                                    <button type="submit" value="" ><i class="fa fa-search"></i></button>
                                </form>
                            </div><!-- .header-bar-search -->

                             <div class="header-bar-menu">
                                <ul class="flex justify-content-center align-items-center py-2 pt-md-0">
                                    
                                    <li><a href="login.aspx" target="_blank">登录</a></li>
                                </ul>
                            </div><!-- .header-bar-menu -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container-fluid -->
            </div><!-- .top-header-bar -->

            <div class="nav-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-9 col-lg-3">
                            <div class="site-branding">
                                <!-- <h1 class="site-title"><a href="index.html" rel="home"><span>湖北大学</span></a></h1> -->
								<img src="images/new_logo2.png" title="湖北大学"> 
                            </div><!-- .site-branding -->
                        </div><!-- .col -->

                        <div class="col-3 col-lg-9 flex justify-content-end align-content-center">
                            <nav class="site-navigation flex justify-content-end align-items-center">
                                <ul class="flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                    <li class="current-menu-item"><a href="Default.aspx">首页</a></li>
                                    <li><a href="#">关于</a></li>
                                    <li><a href="courses.aspx">课程</a></li>
                                    <li><a href="#">记录</a></li>
                                    <li><a href="#">联系</a></li>
                                </ul>

                                <div class="hamburger-menu d-lg-none">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div><!-- .hamburger-menu -->

                                <div class="header-bar-cart">
                                    <a href="#" class="flex justify-content-center align-items-center"><span aria-hidden="true" class="icon_bag_alt"></span></a>
                                </div><!-- .header-bar-search -->
                            </nav><!-- .site-navigation -->
                        </div><!-- .col -->
                    </div><!-- .row -->
                </div><!-- .container -->
            </div><!-- .nav-bar -->
        </header><!-- .site-header -->

        <div class="hero-content-overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="hero-content-wrap flex flex-column justify-content-center align-items-start">
                            <header class="entry-header">
                                <h4>黄鹤江城，百湖灵秀；沙湖黉门，弦歌铿锵。</h4>
                                <h1>日思日睿 <br/>笃志笃行</h1>
                            </header><!-- .entry-header -->

                            <div class="entry-content">
                                <p>湖北大学地处国家中部地区中心城市、湖北省省会——武汉市。学校是湖北省人民政府与教育部共建的省属重点综合性大学，也是国家“中西部高校基础能力建设工程”高校、湖北省“国内一流大学建设高校”，湖北省“最佳文明单位”。现任党委书记尚钢、校长赵凌云。</p>
                            </div><!-- .entry-content -->

                            <footer class="entry-footer read-more">
                                <a href="#">了解更多</a>
                            </footer><!-- .entry-footer -->
                        </div><!-- .hero-content-wrap -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .hero-content-hero-content-overlay -->
    </div><!-- .hero-content -->

    <div class="icon-boxes">
        <div class="container-fluid">
            <div class="flex flex-wrap align-items-stretch">
                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-user"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">人才培养</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>合理安排各学期学生培养计划，把时间还给学生，把方法教给学生，给学生的自主学习和个性发展留出足够的空间</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">了解更多<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->

                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-folder"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">教学资源</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>学校现有专任教师1324人，其中正、副教授815人，博士生导师130人、硕士生导师606人。图书馆藏纸质文献240万册，电子图书总量296.53万册，中外文数据库311个。</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">了解更多<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->

                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-book"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">学科科研</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>学科专业涵盖哲、经、法、教、文、史、理、工、农、医、管、艺等12个学科门类。其中，化学、材料科学2个学科进入ESI国际学科排名全球前1%，跻身世界高水平学科行列。</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">了解更多<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->

                <div class="icon-box">
                    <div class="icon">
                        <span class="ti-world"></span>
                    </div><!-- .icon -->

                    <header class="entry-header">
                        <h2 class="entry-title">国际交流</h2>
                    </header><!-- .entry-header -->

                    <div class="entry-content">
                        <p>学科专业涵盖哲、经、法、教、文、史、理、工、农、医、管、艺等12个学科门类。其中，化学、材料科学2个学科进入ESI国际学科排名全球前1%，跻身世界高水平学科行列。</p>
                    </div><!-- .entry-content -->

                    <footer class="entry-footer read-more">
                        <a href="#">了解更多<i class="fa fa-long-arrow-right"></i></a>
                    </footer><!-- .entry-footer -->
                </div><!-- .icon-box -->
            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .icon-boxes -->

    <!-- .courses-wrap 已删除 -->

    <!-- .about-section 已删除 -->
	
	<section class="latest-news-events">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <header class="heading flex justify-content-between align-items-center">
                        <h2 class="entry-title">湖大要闻</h2>
                    </header><!-- .heading -->
                </div><!-- .col -->

                <!-- 首页资讯开始的地方 -->
                    <div style="margin-left: 20px">
                        <asp:DataList ID="Datli_News" runat="server" RepeatDirection="Horizontal" RepeatColumns="2">
                            <ItemTemplate>
                                <div style="margin-bottom:60px">
                                    <a href='News-details.aspx?资讯ID=<%# DataBinder.Eval(Container.DataItem,"资讯ID") %>'>
                                        <asp:Image ID="Image1" runat="server" CommandName="update" Height="170px" ImageUrl='<%#Eval("图片")%>' Width="220px" ImageAlign="Left" />
                                    </a>
                                    <div style="display: inline-block; margin-left: 20px; margin-right: 50px">
                                        <div class="posted-date">
                                            <i class="fa fa-calendar" style="color: #31c982"></i>
                                            <asp:Label ID="LblTime" runat="server" Width="170px" ForeColor="#999999"><%# DataBinder.Eval(Container.DataItem,"发布时间") %></asp:Label>
                                        </div>
                                        <br />
                                        <a href='News-details.aspx?资讯ID=<%# DataBinder.Eval(Container.DataItem,"资讯ID") %>'>
                                        <asp:Label ID="LblTitle" runat="server" CommandName="update" Font-Underline="False" ForeColor="#404040" Width="220px" Font-Size="20px"><%# DataBinder.Eval(Container.DataItem,"标题") %></asp:Label>
                                        </a>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>

                        <asp:ObjectDataSource ID="odsTopData" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTopData" TypeName="MainDataSetTableAdapters.资讯TableAdapter" UpdateMethod="Update">
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
                
                <div class="col-12 px-25 flex justify-content-center">
                    <a class="btn" href="News.aspx" >查看更多新闻</a>
                    <!-- 首页资讯结束的地方 -->




                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </section><!-- .latest-news-events -->

    <section class="testimonial-section">
        <!-- Swiper -->
        <div class="swiper-container testimonial-slider">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 order-2 order-lg-1 flex align-items-center mt-5 mt-lg-0">
                                <figure class="user-avatar">
                                    <img src="images/user-1.jpg" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content">
                                    <p>楚才学院2018年拟选拔楚才计划文科预备班、楚才计划理科预备班学生各40人，双专业交叉复合型人才培养试点班大数据相关30人。</p>
                                </div><!-- .entry-content -->

                                <div class="entry-footer">
                                    <h3 class="testimonial-user">楚才学院 <span>2018/09/07</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->
                

                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 order-2 order-lg-1 flex align-items-center mt-5 mt-lg-0">
                                <figure class="user-avatar">
                                    <img src="images/user-2.jpg" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content">
                                    <p>以“网络安全为人民，网络安全靠人民”为主题的国家网络安全宣传周将于2018年9月17日至23日在全国范围内统一举行</p>
                                </div><!-- .entry-content -->

                                <div class="entry-footer">
                                    <h3 class="testimonial-user">信息化建设与管理处   &nbsp;&nbsp;<span>2018/09/14</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->

                <div class="swiper-slide">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-lg-6 flex order-2 order-lg-1 align-items-center mt-5 mt-lg-0">
                                <figure class="user-avatar">
                                    <img src="images/user-3.jpg" alt="">
                                </figure><!-- .user-avatar -->
                            </div><!-- .col -->

                            <div class="col-12 col-lg-6 order-1 order-lg-2 content-wrap h-100">
                                <div class="entry-content">
                                    <p>近日，省纪委向全省发出通知，严明双节纪律要求，重申“十个严禁”，强调狠纠“四风”，防止“节日腐败”，确保风清气正过节。</p>
                                </div><!-- .entry-content -->

                                <div class="entry-footer">
                                    <h3 class="testimonial-user">校纪委 <span>2018/09/18</span></h3>
                                </div><!-- .entry-footer -->
                            </div><!-- .col -->
                        </div><!-- .row -->
                    </div><!-- .container -->
                </div><!-- .swiper-slide -->
            </div><!-- .swiper-wrapper -->

            <div class="container">
                <div class="row">
                    <div class="col-12 col-lg-6 mt-5 mt-lg-0">
                        <div class="swiper-pagination position-relative flex justify-content-center align-items-center"></div>
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .testimonial-slider -->
    </section>
   

    <section class="featured-courses vertical-column courses-wrap">
        <div class="container">
            <div class="row mx-m-25">
                <div class="col-12 px-25">
                    <header class="heading flex flex-wrap justify-content-between align-items-center">
                        <h2 class="entry-title">热门课程</h2>

                        <nav class="courses-menu mt-3 mt-lg-0">
                            <ul class="flex flex-wrap justify-content-md-end align-items-center">
                                <li class="active"><a href="#">全部</a></li>
                                <li><a href="#">经济学</a></li>
                                <li><a href="#">文学</a></li>
                                <li><a href="#">计算机</a></li>
                                <li><a href="#">语言学</a></li>
                            </ul>
                        </nav><!-- .courses-menu -->
                    </header><!-- .heading -->
                </div><!-- .col -->







                 <asp:DataList ID="Datli_Few" runat="server" CellPadding="0" DataKeyField="课程编号" DataSourceID="odsCourses" RepeatDirection="Horizontal" Style="margin-top: 155px" Width="360px">
                       <ItemTemplate>
                           <a href='single-courses.aspx?课程编号=<%# DataBinder.Eval(Container.DataItem,"课程编号") %>'>
                           <asp:Image ID="Image1" runat="server" align="center" CommandName="update" Height="165px" ImageUrl='<%#Eval("课程用书图片路径")%>' Width="159px" />
                           </a>
                              <br />
                                        课程名:
                           <asp:Label ID="lblCourseID" runat="server" CommandName="update" Font-Underline="False" ForeColor="#404040" Width="300px"><%# DataBinder.Eval(Container.DataItem,"课程名") %></asp:Label>
                                        <br />                                    
                                    </ItemTemplate>
                </asp:DataList>
			

 <asp:ObjectDataSource ID="odsCourses" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDefaultaspxData" TypeName="MainDataSetTableAdapters.课程TableAdapter" UpdateMethod="Update">
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
            <UpdateParameters>
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="开设学院名" Type="String" />
                <asp:Parameter Name="课程学时" Type="Int32" />
                <asp:Parameter Name="课程用书图片路径" Type="String" />
                <asp:Parameter Name="课程描述" Type="String" />
                <asp:Parameter Name="Original_课程编号" Type="String" />
            </UpdateParameters>
    </asp:ObjectDataSource>
                

          

                <div class="col-12 px-25 flex justify-content-center">
                    <a class="btn" href="courses.aspx" >查看更多课程</a>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </section><!-- .courses-wrap -->


    <section class="home-gallery">
        <div class="gallery-wrap flex flex-wrap">
            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/a.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/b.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid2x2">
                <a href="#"><img src="images/c.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/d.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/e.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid2x1">
                <a href="#"><img src="images/g.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid2x1">
                <a href="#"><img src="images/h.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/i.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid2x2 ">
                <a href="#"><img src="images/j.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/k.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/l.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid2x1">
                <a href="#"><img src="images/m.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid3x1">
                <a href="#"><img src="images/n.jpg" alt=""></a>
            </div><!-- .gallery-grid -->

            <div class="gallery-grid gallery-grid1x1">
                <a href="#"><img src="images/o.jpg" alt=""></a>
            </div><!-- .gallery-grid -->
        </div><!-- .gallery-wrap -->
    </section><!-- .home-gallery -->

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
