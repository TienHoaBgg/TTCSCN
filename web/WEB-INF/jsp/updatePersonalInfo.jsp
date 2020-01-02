<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Trang chủ</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/bb5e62a986.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/AdminKMA/css/pageCss.css">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
        <!--file bookstrap date-->
        <!--              <link rel="stylesheet" type="text/css" href="http://localhost:8080/AdminKMA/css/main.css">
                        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500" rel="stylesheet" />-->
        <!--file bookstrap date-->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.standalone.css" />
        <link rel="stylesheet" type="text/css" href="/AdminKMA/css/jquery.ptTimeSelect.css" />
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css" type="text/css" media="all" />
        <style>
            .form input,.form{
                font-size: 15px;
            }

            .form button{ 
                padding: 10px;
                font-size:  15px;
            }
        </style>

    </head>

    <body>

        <%@include file="hearderHomePage.jsp" %>

        <div class="breadcrumb-area">
            <div class="breadcrumb-area__flex d-flex ">
                <div class="breadcrumb-area__background"></div>
                <div class="container">
                    <div class="breadcrumb-area__contain text-center">
                        <h2 class="" style="text-transform: uppercase">Cập Nhật Thông Tin Cá Nhân</h2>
                        <div class="breadcrumb-area__contain--link">
                            <a href="/AdminKMA/HomePage">Trang chủ</a>
                            <a href="/AdminKMA/InfoPersonal?idRFID=${idRFID}&idFingerprint=${idFT}">Thông Tin Cá Nhân</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div  style="width: 100%; margin-top: 50px;margin-bottom: 100px;" class="container content" >

            <spring:form class="form" action="/AdminKMA/saveUpdatePersonalInfo" method="post"  modelAttribute="e" >

                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">id RFID</label>
                        <spring:input type="text" path="idRFID" value="${e.idRFID}" class="form-control" id="exampleFormControlInput1" />
                    </div>
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">id Finterprint</label>
                        <spring:input type="text" path="idFingerprint" class="form-control" id="exampleFormControlInput1" placeholder="Nhập mật khẩu"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Email</label>
                        <spring:input type="email" path="email" value="" class="form-control" id="exampleFormControlInput1" placeholder="Nhập emali"/>
                    </div>
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Mật Khẩu</label>
                        <spring:input type="password" path="pass" class="form-control" id="exampleFormControlInput1" placeholder="Nhập mật khẩu"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Họ Tên</label>
                        <spring:input type="text" path="fullName" class="form-control" id="exampleFormControlInput1" placeholder="Họ tên đầy đủ"/>
                    </div>
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Số Điện Thoại</label>
                        <spring:input type="text" path="phone" class="form-control" id="exampleFormControlInput1" placeholder="Nhập số điện thoại"/>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Địa Chỉ</label>
                        <spring:input type="text" path="address"  class="form-control" id="exampleFormControlInput1" placeholder="Địa chỉ"/>
                    </div>



                    <div class='col-6 form-group '>
                        <div id="filterDate2">
                            <label class="control-label TittleChildren" for="date" >Ngày Sinh</label>
                            <!-- Datepicker as text field -->         
                            <div class="demo">
                                <p id="basicExample">
                                    <spring:input  type="text" path="birthday"  id="exampleFormControlInput1" class="form-control date start" />   
                                    <!--<i class="fas fa-calendar-alt"></i>-->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Giới Tính</label><br>
                        <input type="radio" name="gender" value="Nam" checked> Nam
                        <input type="radio" name="gender" value="Nữ" style="margin-left: 20%;"> Nữ<br>

                    </div>
                    <div class="form-group col-6">

                        <label for="exampleFormControlInput1" class="TittleChildren">Chọn ảnh</label>
                        <div class="custom-file">
                            <input type="hidden" value="${e.image}" name="oldImage" />
                            <spring:input type="file" path="image" class="custom-file-input" id="inputGroupFile01"/>
                            <label class="custom-file-label" for="inputGroupFile01" style="color:#495057;">Chọn ảnh </label>
                        </div>  
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlSelect1" class="TittleChildren">Phòng Ban -Khoa</label>
                        <select name="idRoom" style="font-size: 1.5rem" class="form-control" id="exampleFormControlSelect1">
                            <c:forEach var="item" items="${lr}">
                                <c:if test="${item.name ==e.name}">
                                    <option selected value="${item.idRoom}">${item.name}</option>
                                </c:if>
                                <c:if test="${item.name !=e.name}">
                                    <option  value="${item.idRoom}">${item.name}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </div>  


                </div>
                <div class="row">
                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren">Hệ Số Lương</label>
                        <spring:input type="text" path="cSalary"  class="form-control money" id="exampleFormControlInput1 " placeholder=""/>
                    </div>

                    <div class="form-group col-6">
                        <label for="exampleFormControlInput1" class="TittleChildren"> Chức Vụ</label>
                        <spring:input type="text" path="positionn" class="form-control" id="exampleFormControlInput1" placeholder="Nhập chức vụ"/>
                    </div>
                </div>

                <button style="width: 100%;" type="submit" class="btn btn-primary">Lưu</button>
            </spring:form>
        </div>




        <!--datePicker-->
        <script>
            $('#basicExample .time').timepicker({
                'showDuration': true,
                'timeFormat': 'g:ia'
            });

            $('#basicExample .date').datepicker({
                'format': 'd-m-yyyy',
                'autoclose': true
            });

            var basicExampleEl = document.getElementById('basicExample');
            var datepair = new Datepair(basicExampleEl);
        </script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-15605525-4', 'auto');
            ga('send', 'pageview');
        </script>              
        <!--datePicker-->


        <%@include file="footerHomePage.jsp" %>
        <!-- ====================END FOOTER============================== -->

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </body>

</html>