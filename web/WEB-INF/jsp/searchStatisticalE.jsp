<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/bb5e62a986.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
        <script src="https://code.highcharts.com/highcharts.src.js"></script>
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/AdminKMA/css/pageCss.css">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.standalone.css" />
        <link rel="stylesheet" type="text/css" href="/AdminKMA/css/jquery.ptTimeSelect.css" />
        <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css" type="text/css" media="all" />
        <title>Trang chủ</title>
        <style>
            .news:link{
                text-decoration: none;
            }
            .news p{
                color: black;
                font-size: 1.3em;
            }
            .page-link{
                padding: 15px;
                font-size: 15px;
            }
        </style>
        <script>
            function validateForm() {
                var dateStart = document.forms["myForm"]["dateStart"].value;
                var dateEnd = document.forms["myForm"]["dateEnd"].value;
                if (dateStart == "" || dateEnd == "") {
                    alert("Không được để trống");
                    return false;
                }
//                
//                else if((new Date(dateEnd).getTime() > new Date(dateStart).getTime())){
//                     alert("Ngày kết thúc phải lớn hơn ngày bắt đầu");
//                    return false;
//                }
            }
        </script>
    </head>
    <body>
        <%@include file="hearderHomePage.jsp" %>
        <div class="breadcrumb-area">
            <div class="breadcrumb-area__flex d-flex ">
                <div class="breadcrumb-area__background"></div>
                <div class="container">
                    <div class="breadcrumb-area__contain text-center">
                        <h2 class="">THỐNG KÊ CÁ NHÂN</h2>
                        <div class="breadcrumb-area__contain--link">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="staff-info">
            <div class="container">
                <div class="staff-info--primary_text text-center">
                    <h2>Thông Tin Nhân Viên</h2>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="staff-info--img text-center">
                            <img src="/AdminKMA/images/${e.image}" alt="">
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="staff-info__impor">
                            <table class="info-table table">
                                <tr class="info-table__row">
                                    <th class="info-table__col-left">Họ Và tên</th>
                                    <th class="info-table__col-right">${e.fullName}</th>
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Giới Tính</th>
                                    <th class="info-table__col-right">${e.gender}</th class="info-table__col-right">
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Ngày Sinh</th>
                                    <th class="info-table__col-right">${e.birthday}</th>
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Email</th>
                                    <th class="info-table__col-right">${e.email}</th>
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Chức vụ</th>
                                    <th class="info-table__col-right">${e.positionn}</th>
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Hệ số lương</th>
                                    <th class="info-table__col-right">${cSalary}</th>
                                </tr>
                                <tr>
                                    <th class="info-table__col-left">Đơn vị</th>
                                    <th class="info-table__col-right">${e.name}</th>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <form name="myForm" action="/AdminKMA/searchDateStatisticalE" method="post" onsubmit="return validateForm()">
                    <input type="hidden" value="${e.idRFID}" name="idRFID" />
                    <div class="row ">

                        <div class="col-2 TittleChildren">Chọn Tháng Bắt Đầu : </div>
                        <div class="col-2 form-group"> 
                            <div id="filterDate2">       
                                <div class="demo">
                                    <p id="basicExample">
                                        <input  type="text" autocomplete="off" name="dateStart"   id="exampleFormControlInput1" class="form-control date start" />   
                                        <!--<i class="fas fa-calendar-alt"></i>-->
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-2 TittleChildren">Chọn Tháng Kết Thúc :</div>
                        <div class="col-2 form-group"> 
                            <div id="filterDate2">    
                                <div class="demo">
                                    <p id="basicExample">
                                        <input  type="text" autocomplete="off" name="dateEnd"  id="exampleFormControlInput1" class="form-control date start" />   
                                        <!--<i class="fas fa-calendar-alt"></i>-->
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">  <button class="btn btn-outline-secondary" type="submit" id="button-addon1">Tìm Kiếm</button></div>
                    </div>
                </form>
            </div>
        </section>
        <!-- ==================End staff-info================================== -->
        <!-- ===============================BIỂU ĐỒ NHÂN SỰ============================ -->


        <div class="bieuDoTK-contain">
            <div class="container">
                <div class="bieuDoTK-contain__title-text text-center">
                    <h2>THỐNG KÊ</h2>
                    <!--                    <div class="input-area">
                                            <form action="/AdminKMA/searchMonthYearStatisticalE" method="post">
                                                <div class="input-group ">
                    
                                                    <input type="hidden" value="${e.idRFID}" name="idRFID" />
                                                    <input type="month" name="monthYear" class="form-control" placeholder="" aria-label="Example text with button addon"
                                                           aria-describedby="button-addon1">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-secondary" type="submit" id="button-addon1">Tìm Kiếm</button>
                                                    </div>
                    
                                                </div>
                    
                                            </form>
                    
                    
                                        </div>-->
                </div>
                <div class="bieuDoTK__main">
                    <div id="Test" class="TestChartjs">
                    </div>
                    <div class="bieuDoTK__Sub d-flex">
                        <div class="bieuDoTK__Sub--ontime">
                            <div class="d-flex">
                                <div class="color-d">
                                </div>
                                <span>Đi làm đúng giờ : ${dayOnTime} Ngày</span>
                            </div>
                        </div>
                        <div class=" bieuDoTK__Sub--relative bieuDoTK__Sub--late">
                            <div class="d-flex">
                                <div class="color-d">
                                </div>
                                <span> Đi làm muộn : ${dayLate} Ngày</span>
                            </div>
                            <div class="bieuDoTK__Sub--list-date">
                                <ul>
                                    <c:forEach var="s" items="${lsDayLate}"> 
                                        <li>${s.datework} -- ${s.timeWork} </li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="bieuDoTK__Sub--relative  bieuDoTK__Sub--off">
                            <div class="d-flex">
                                <div class="color-d">
                                </div>
                                <span> Nghỉ làm : ${dayOff} Ngày </span>
                            </div>
                            <div class="bieuDoTK__Sub--list-date">
                                <ul>
                                    <c:forEach var="s" items="${lsDayOff}"> 
                                        <li>${s} </li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <!-- ================================ END LIST STAF========================== -->
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
            $(document).ready(function () {
                $('#mytable').DataTable();
            });
        </script>
        <script>
            // Radialize the colors
            Highcharts.setOptions({
                colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
                    return {
                        radialGradient: {
                            cx: 0.5,
                            cy: 0.3,
                            r: 0.7
                        },
                        stops: [
                            [0, color],
                            [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                        ]
                    };
                })
            });

            // Build the chart
            Highcharts.chart('Test', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Biểu đồ thống kê đi làm từ ${dateStart} đến ${dateEnd}'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                accessibility: {
                    point: {
                        valueSuffix: '%'
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                            connectorColor: 'silver'
                        }
                    }
                },
                series: [{
                        name: 'Share',
                        data: [
                            {name: 'Đi làm đúng h', y: ${percentDayOn}},
                            {name: 'Đi làm muộn', y:${percentDayLate}},
                            {name: 'Nghỉ làm', y: ${percentDayOff}},
                        ]
                    }]
            });
        </script>

        <%@include file="footerHomePage.jsp" %>
        <!-- ====================END FOOTER============================== -->


    </body>

</html>