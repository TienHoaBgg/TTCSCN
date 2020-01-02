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

        <script type="text/javascript" charset="utf8"
        src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
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
    </head>
    <body>
        <%@include file="hearderHomePage.jsp" %>
        <div class="breadcrumb-area">
            <div class="breadcrumb-area__flex d-flex ">
                <div class="breadcrumb-area__background"></div>
                <div class="container">
                    <div class="breadcrumb-area__contain text-center">
                        <h2 class="">THỐNG KÊ TOÀN TRƯỜNG</h2>
                        <div class="breadcrumb-area__contain--link">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container" style="margin-top: 20px;">
            <form name="myForm" action="/AdminKMA/searchStatisticalSchool" method="post" onsubmit="return validateForm()">

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
        <div class="List-phongBan">
            <div class="container">
                <div class="infor-all">
                    <div class="bieuDoTK-contain">
                        <div class="bieuDoTK-contain__title-text text-center">

                            <div class="input-area">

                            </div>
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
                                </div>
                                <div class="bieuDoTK__Sub--relative  bieuDoTK__Sub--off">
                                    <div class="d-flex">
                                        <div class="color-d">
                                        </div>
                                        <span> Nghỉ làm : ${dayOff} Ngày </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-staff-thongke d-flex">
                            <div class="list-staff-thongke__ontime text-center">
                                <h4>Phòng có số nhân sự đi làm đúng giờ nhất</h4>
                                <c:forEach var="r" items="${lrOnTime}"> 
                                    <h3><span>${r.name} : ${r.percentWorkOnTime} %</span></h3>
                                </c:forEach>
                            </div>
                            <div class="list-staff-thongke__late text-center">
                                <h4>Phòng có số nhân sự  đi làm Muộn Nhiều Nhất</h4>
                                <c:forEach var="r" items="${lrLate}"> 
                                    <h3><span>${r.name} : ${r.percentWorkLate} %</span></h3>
                                </c:forEach>
                            </div>
                            <div class="list-staff-thongke__off text-center">
                                <h4>Phòng có số nhân sự Nghỉ Nhiều Nhất</h4>
                                <c:forEach var="r" items="${lrOff}"> 
                                    <h3><span>${r.name} : ${r.percentWorkOff} %</span></h3>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="list-table">
                            <div class="container">
                                <div class="text-primary text-center">
                                    <h2>Bảng Thống Kê</h2>
                                </div>

                                <table class="table table-contain">
                                    <thead>
                                        <tr>
                                            <th class="name">Tên phòng ban - khoa</th>
                                            <th>Số ngày đúng giờ</th>
                                            <th>Số ngày muộn</th>
                                            <th>Số ngày nghỉ</th>
                                            <th>Chi Tiết</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="r" items="${lr}">
                                            <tr>
                                                <th scope="row">${r.name}</th>
                                                <td>${r.percentWorkOnTime}%</td>
                                                <td>${r.percentWorkLate}%</td>
                                                <td>${r.percentWorkOff}%</td>
                                                <td><a  class="btn btn-primary" href="/AdminKMA/searchMonthYearStatisticalR?idRoom=${r.idRoom}&dateStart=${dateStart}&dateEnd=${dateEnd}">Chi Tiết</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $('#basicExample .time').timepicker({
                'showDuration': true,
                'timeFormat': 'g:ia'
            });

            $('#basicExample .date').datepicker({'format': 'd-m-yyyy',
                'autoclose': true
            });

            var basicExampleEl = document.getElementById('basicExample');
            var datepair = new Datepair(basicExampleEl);
        </script>
        <script>

            $(document).ready(function () {
                $('#mytable').DataTable();
            });
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
            Highcharts.chart('Test2', {
                chart: {plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Biểu đồ thống kê đi làm in Tháng, Năm'
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
                            {name: 'Đi làm đúng h', y: 50},
                            {name: 'Đi làm muộn', y: 25},
                            {name: 'Nghỉ làm', y: 25},
                        ]
                    }]
            });
            function bieudo(idbang, thang, nam, ontime, late, off) {
                Highcharts.chart(idbang, {
                    chart: {
                        plotBackgroundColor: null,
                        plotBorderWidth: null,
                        plotShadow: false,
                        type: 'pie'
                    },
                    title: {
                        text: 'Biểu đồ thống kê đi làm in' + thang + ' ,' + nam
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
                                {name: 'Đi làm đúng h', y: ontime},
                                {name: 'Đi làm muộn', y: late},
                                {name: 'Nghỉ làm', y: off},
                            ]
                        }]
                });
            }
            bieudo(Test3, 12, 2019, 20, 30, 70);

        </script>
        <!-- ==================End heading news====================== -->

        <!-- =====================SECTION NEWS============================ -->

        <!-- =====================END SECTION NEWS============================ -->

        <!-- ====================FOOTER============================== -->
        <%@include file="footerHomePage.jsp" %>
        <!-- ====================END FOOTER============================== -->


    </body>

</html>