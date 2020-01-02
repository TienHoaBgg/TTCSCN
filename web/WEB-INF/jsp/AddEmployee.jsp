<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Ela Admin - HTML5 Admin Template</title>
        <script src="http://localhost:2604/socket.io/socket.io.js"></script>
        <script src="http://localhost:2604/jquery.js"></script>
        <script src="http://localhost:2604/process.js"></script>
        <meta name="description" content="Ela Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="http://localhost:8080/AdminKMA/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="http://localhost:8080/AdminKMA/css/style.css">
        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
       
        <style>
           
        </style>
        
    </head>

    <body>

        <%@include file="ListFunction.jsp" %>

        <div id="right-panel" class="right-panel">

            <%@include file="header.jsp" %>

            <div class="content">
                <spring:form  action="/AdminKMA/saveAddEmployee" onsubmit="return validateForm()"  method="post"  modelAttribute="e" >
                    <h4 class="tittleForm">Thêm Nhân Sự</h4>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">id RFID</label>
                            <spring:input type="text"  path="idRFID" value="" class="form-control" id="idRFID" placeholder="Waiting..." readonly="true"/>
                        </div>
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">id Finterprint</label>
                            <spring:input type="text" path="idFingerprint" class="form-control" id="idFingerprint" placeholder="Waiting..." readonly="true"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Email</label>
                            <spring:input type="email" path="email" value="" class="form-control" id="email" placeholder="Nhập emali"/>
                        </div>
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Mật Khẩu</label>
                            <spring:input type="password" path="pass" class="form-control" id="pass" placeholder="Nhập mật khẩu"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Họ Tên</label>
                            <spring:input type="text" path="fullName" class="form-control" id="fullName" placeholder="Họ tên đầy đủ"/>
                        </div>
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Số Điện Thoại</label>
                            <spring:input type="text" path="phone" class="form-control" id="phone" placeholder="Nhập số điện thoại"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Địa Chỉ</label>
                            <spring:input type="text" path="address"  class="form-control" id="address" placeholder="Địa chỉ"/>
                        </div>



                        <div class='col-6 form-group'>
                            <div id="filterDate2">
                                <label class="control-label" for="date" class="TittleChildren">Ngày Sinh</label>
                                <!-- Datepicker as text field -->         
                                <div class="input-group date" data-date-format="dd.mm.yyyy">

                                    <spring:input  type="text" path="birthday" id="birthday" class="form-control" placeholder="dd-mm-yyyy"/>
                                    <div class="input-group-addon" >
                                        <i class="fas fa-calendar-alt"></i>
                                    </div>
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
                                <spring:input type="file" path="image" class="custom-file-input" id="inputGroupFile01"/>
                                <label class="custom-file-label" for="inputGroupFile01" style="color:#495057;">Chọn ảnh </label>
                            </div>  
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlSelect1" class="TittleChildren">Phòng Ban -Khoa</label>
                            <select name="idRoom" class="form-control" id="exampleFormControlSelect1">
                                <c:forEach var="item" items="${lr}">
                                    <option  value="${item.idRoom}">${item.name}</option>
                                </c:forEach>
                            </select>
                        </div>  
                        <div class="form-group col-6">
                            <label for="exampleFormControlSelect1" class="TittleChildren">Quyền</label>
                            <select name="quyen" class="form-control" id="exampleFormControlSelect1">
                                <option selected>Quản Lý </option>
                                <option  >Nhân Sự</option>

                            </select>
                        </div>

                    </div>
                    <div class="row">
                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren">Hệ Số Lương</label>
                            <spring:input type="text" path="cSalary"   class="form-control money" id="cSalary " placeholder=""/>
                        </div>

                        <div class="form-group col-6">
                            <label for="exampleFormControlInput1" class="TittleChildren"> Chức Vụ</label>
                            <spring:input type="text" path="positionn" class="form-control" id="positionn" placeholder="Nhập chức vụ"/>
                        </div>
                    </div>
                    <div style="text-align: center;">
                        <button style="width: 39%; " id="btnMyself" type="submit" class="btn btn-primary">THÊM</button>
                        <button style="width: 39%;" type="button"  class="btn btn-danger" id='btn_connect'>Connect to module</button>
                    </div>
                 
                </spring:form>
            </div>

        </div>
        <!--file date--> 

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
            function validateForm() {
                var idRFID = document.getElementById('idRFID').value;
                if (idRFID == "") {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Bạn chưa quẹt thẻ : RFID',
                    })
                    return false;
                }
                var idFingerprint = document.getElementById('idFingerprint').value;
                if (idFingerprint == "") {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Chưa có vân tay của bạn ',
                    })
                    return false;
                }
                var pass = document.getElementById('pass').value;
                if (pass == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Chưa nhập mật khẩu ',
                    })
                    return false;
                }
                else if (/^[a-zA-Z0-9- ]*$/.test(pass) == false) {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'mật khẩu không gồm ký tự đặc biệt ',
                    })
                    return false;
                }
                else if (pass.length < 6)
                {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Mật khẩu ít nhất 6 ký tự ',
                    })
                    return false;
                }


                var fullName = document.getElementById('fullName').value;
                if (fullName == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Họ Tên không được để trống ',
                    })
                    return false;
                }
                
                var phone = document.getElementById('phone').value;
                 var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                if (phone == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Số điện thoại không được để trống ',
                    })
                    return false;
                }
                else if (vnf_regex.test(phone) == false) {
		
                Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Số điện thoại không đúng định dạng ',
                    })
                    return false;
	}
        
        var address = document.getElementById('address').value;
                 
                if (address == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Địa chỉ không được để trống ',
                    })
                    return false;
                }
                
                var birthday = document.getElementById('birthday').value;
                
                if (birthday == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Ngày sinh không được để trống ',
                    })
                    return false;
                }
               else if (birthday > dateNow) {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Ngày sinh nhỏ hơn ngày của hiện tại ',
                    })
                    return false;
                }
                
                var cSalary = document.getElementById('cSalary').value;
                if (cSalary == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Hệ số lương không được để trống ',
                    })
                    return false;
                }
                
                var positionn = document.getElementById('positionn').value;
                if (positionn == '') {
                    Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: 'Chức vụ không được để trống ',
                    })
                    return false;
                }
        
            }
        </script>

         <c:if test="${not empty warn}">
            <script>
                $(document).ready(function () {
                    function checkWarn() {
                        Swal.fire({
                        icon: 'error',
                        title: 'CẢNH BÁO',
                        text: '${warn}',
                    })
                    }
                    ;

                    checkWarn();
                });
            </script>
        </c:if>



            <script src = "https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
        <script src="http://localhost:8080/AdminKMA/js/main.js"></script>

        <!--  Chart js -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

        <!--Chartist Chart-->
        <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>


        <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
        <script src="http://localhost:8080/AdminKMA/js/init/fullcalendar-init.js"></script>

        <!--Local Stuff-->
      
    </body>
</html>
