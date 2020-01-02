<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Bootstrap CSS -->
        <script type="text/javascript" nonce="470fc893cf1a412d94bf392ce3f" src="//local.adguard.org?ts=1577135833744&amp;type=content-script&amp;dmn=cdn.fbsbx.com&amp;css=1&amp;js=1&amp;gcss=1&amp;rel=1&amp;rji=1"></script>
        <script type="text/javascript" nonce="470fc893cf1a412d94bf392ce3f" src="//local.adguard.org?ts=1577135833744&amp;name=AdGuard%20Assistant%20Beta&amp;name=AdGuard%20Popup%20Blocker%20%28Beta%29&amp;name=AdGuard%20Extra%20Beta&amp;type=user-script"></script><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
                                                                                                                                                                                                        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/bb5e62a986.js" crossorigin="anonymous"></script>


        <title>Trang Chủ | Nội Quy</title>
    </head>

    <body>
        <!-- ==========LOGOUT============= -->
        <%@include file="hearderHomePage.jsp" %>
        <!-- ================END HEADER MENU AREA=================== -->
        <!-- ========================BRREADCRUMB-AREA===================== -->
        <div class="breadcrumb-area">
            <div class="breadcrumb-area__flex d-flex ">
                <div class="breadcrumb-area__background"></div>
                <div class="container">
                    <div class="breadcrumb-area__contain text-center">
                        <h2 class="">Giới Thiệu</h2>
                        <div class="breadcrumb-area__contain--link">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ========================END BRREADCRUMB-AREA===================== -->

        <!-- ==============================SECTION CONTENT=========================== -->
        <div class="noiQuy-area">
            <div class="container">
                <div class="header-box text-center">
                    <h2 class="header-box__text-main">Nội Quy Của Học Viện</h2>
                </div>
                <div class="noiQuy-area__main">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="list-group" id="list-tab" role="tablist">
                                <a class="list-group-item list-group-item-action active" id="list-home-list"
                                   data-toggle="list" href="#list-home" role="tab" aria-controls="home">Những Quy Định
                                    Chung</a>
                                <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list"
                                   href="#list-profile" role="tab" aria-controls="profile">Thời Giờ Làm Việc - Nghỉ
                                    Ngơi</a>
                                <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"
                                   href="#list-messages" role="tab" aria-controls="messages">Các Hành Vi Nghiêm Cấm</a>
                                <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list"
                                   href="#list-settings" role="tab" aria-controls="settings">Xử Lý Kỷ Luật Lao Động</a>
                            </div>

                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="list-home" role="tabpanel"
                                     aria-labelledby="list-home-list">
                                    <span>
                                        ${rule.introduce}
                                    </span></div>
                                <div class="tab-pane fade" id="list-profile" role="tabpanel"
                                     aria-labelledby="list-profile-list">
                                    <p>  - Thời gian làm việc :</p>
                                    <p>+ Thời gian bắt đầu : ${rule.timeStart}</p>
                                </p>+ Thời gian kết thúc : ${rule.timeEnd}</p>


                                </div>
                                <div class="tab-pane fade" id="list-messages" role="tabpanel"
                                     aria-labelledby="list-messages-list"> 
                                    ${rule.prohibit}                         

                                </div>
                                <div class="tab-pane fade" id="list-settings" role="tabpanel"
                                     aria-labelledby="list-settings-list">
                                                                   


                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="noiQuy-area__img text-center">
                                <div class="noiQuy-area__img--size">
                                    <img src="./img/bongda-3.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="noiQuy-area__main--download">
                        <!--                    <a href="" class="btn btn-primary btn-download">Tải Xuống Nội Quy</a>-->
                    </div>
                </div>
            </div>
        </div>

        <!-- ==============================END SECTION CONTENT=========================== -->

        <!-- ====================FOOTER============================== -->
        <%@include file="footerHomePage.jsp" %>
        <!-- ====================END FOOTER============================== -->
    </body>

</html>