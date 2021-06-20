<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!doctype html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <title>아쿠아포닉스</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link
      href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap4.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
  </head>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script>
    
    
  </script>

  <jsp:include page="side-bar.jsp"></jsp:include>
  <body class="horizontal light">
    <a style="display: none;" class="nav-link text-muted my-2" href="#" id="modeSwitcher" data-mode="light"></a>
    <div class="wrapper">
      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row align-items-center mb-2">
                <div class="col">
                  <h2 class="h5 page-title">관찰 일지</h2>
                </div>
                <div class="col-auto">
                </div>
              </div>
              <div class="mb-2 align-items-center">
                <div class="card mb-4">
                  <div class="card-body">
                    <div class="row mt-1 align-items-center" style="display: block;">
                      <table class="table table-hover datatables" id="dataTable-1">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Date</th>
                          </tr>
                        </thead>
                      </table>
                    </div>
                    <div class="map-box">
                      <div id="areaChart"></div>
                    </div>
                  </div> <!-- .card-body -->
                </div> <!-- .card -->
              </div>
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
      </main> <!-- main -->
    </div> <!-- .wrapper -->

    <!-- new event modal -->
    <div class="modal fade" id="eventModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel"
      aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="varyModalLabel">관찰 일지</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body p-4">
            <form>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="writer" id="num">모둠 이름</label>
                  <input type="text" class="form-control" id="writer" readonly>
                </div>
                <div class="form-group col-md-6">
                  <label for="plantName">식물 이름</label>
                  <input type="text" class="form-control" id="plantName" readonly>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="observationDate">관찰 날짜</label>
                  <input type="text" class="form-control" id="observationDate" readonly>
                </div>
                <div class="form-group col-md-6">
                  <label for="farmType">스마트팜 종류</label>
                  <input type="text" class="form-control" id="farmType" readonly>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="plantType">식물 종류</label>
                  <input type="text" class="form-control" id="plantType" readonly>
                </div>
                <div class="form-group col-md-6">
                  <label for="farmType">식물과 전등의 거리</label>
                  <input type="text" class="form-control" id="plantToLight" readonly>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="plantType">식물의 길이</label>
                  <input type="text" class="form-control" id="plantLength" readonly>
                </div>
                <div class="form-group col-md-6">
                  <label for="plantType">잎의 길이</label>
                  <input type="text" class="form-control" id="leafLength" readonly>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="farmType">온도</label>
                  <input type="text" class="form-control" id="temperature" readonly>
                </div>
                <div class="form-group col-md-6">
                  <label for="plantType">습도</label>
                  <input type="text" class="form-control" id="humidity" readonly>
                </div>
              </div>
              <hr>
              <div class="form-group col-md-12" id="imgInsert" style="display: none;">
                <label for="customFile">사진</label>
                  <div class="custom-file">
                    <input type="file" class="custom-file-input" id="files" accept="image/gif, image/jpeg, image/png">
                    <label class="custom-file-label" for="customFile">이미지 파일만 가능 합니다. (jpg, png, 등등..)</label>
                  </div>
              </div>
              <div id="plantImage"></div>
              <hr>
              <div class="form-group col-md-12">
                <label for="contentNote">메모</label>
                <textarea class="form-control" id="contentNote" rows="4" style="margin-top: 0px; margin-bottom: 0px; height: 62px; resize: none;" readonly></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer d-flex justify-content-between">
            <button type="button" class="btn mb-2 btn-secondary" id="deleteContentBtn">일지 삭제</button>
            <button type="button" class="btn mb-2 btn-primary" id="updateContentBtn">일지 수정</button>
          </div>
        </div>
      </div>
    </div> <!-- new event modal -->

    <!-- insert modal -->
    <div class="modal fade" id="insertModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="varyModalLabel">관찰 일지 작성</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body p-4">
            <form id="contentForm">
              <div class="form-row"> 
                <div class="form-group col-md-6">
                  <label for="userId" class="col-form-label">모둠 이름</label>
                  <input type="text" class="form-control" id="userId">
                </div>
                <div class="form-group col-md-6">
                  <label for="userId" class="col-form-label">식물 이름</label>
                  <input type="text" class="form-control" id="insertPlantName">
                </div>
              </div>
              <div class="form-row"> 
                <div class="form-group col-md-6">
                  <label for="obsDate">관찰 날짜</label>
                  <input class="form-control" id="obsDate" type="date" name="date">
                </div>
                <div class="form-group col-md-6">
                  <label for="obsTime">관찰 시간</label>
                  <input class="form-control" id="obsTime" type="time" name="time">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="insertFarmType">스마트팜 종류</label>
                  <select id="insertFarmType" class="form-control select2">
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="palntType">식물 종류</label>
                  <input class="form-control" id="palntType" type="text">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="insertPlantToLight" class="col-form-label">식물과 전등의 거리</label>
                  <input type="text" class="form-control" id="insertPlantToLight" placeholder="식물과 전등의 거리 (단위: cm)">
                </div>
                <div class="form-group col-md-6">
                  <label for="insertPlantLength" class="col-form-label">식물의 길이</label>
                  <input type="text" class="form-control" id="insertPlantLength" placeholder="식물의 길이 (단위: cm)">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="insertLeafLength" class="col-form-label">잎의 길이</label>
                  <input type="text" class="form-control" id="insertLeafLength" placeholder="길이 (단위: cm)">
                </div>
                <div class="form-group col-md-4">
                  <label for="insertTemperature" class="col-form-label">온도</label>
                  <input type="text" class="form-control" id="insertTemperature" placeholder="온도 (단위: º)">
                </div>
                <div class="form-group col-md-4">
                  <label for="insertHumidity" class="col-form-label">습도</label>
                  <input type="text" class="form-control" id="insertHumidity" placeholder="습도 (단위: %)">
                </div>
              </div>
              <hr>
              <div class="form-group mb-3">
                <label for="customFile">사진</label>
                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="files" accept="image/gif, image/jpeg, image/png">
                  <label class="custom-file-label" for="customFile">이미지 파일만 가능 합니다. (jpg, png, 등등..)</label>
                </div>
              </div>
              <hr>
              <div class="form-group mb-12">
                <label for="insertNote">메모</label>
                <textarea class="form-control" id="insertNote" rows="4" style="margin-top: 0px; margin-bottom: 0px; height: 62px; resize: none;" maxlength="200"></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer d-flex justify-content-between">
            <button type="button" class="btn mb-2 btn-primary" id="insertContentBtn">일지 저장</button>
          </div>
        </div>
      </div>
    </div> <!-- insert modal -->

    <!-- update modal -->
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="eventModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="varyModalLabel">관찰 일지 수정</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body p-4">
            <form id="contentForm">
              <div class="form-row"> 
                <div class="form-group col-md-6">
                  <label for="updateUserId" class="col-form-label">모둠 이름</label>
                  <input type="text" class="form-control" id="updateUserId">
                </div>
                <div class="form-group col-md-6">
                  <label for="userId" class="col-form-label">식물 이름</label>
                  <input type="text" class="form-control" id="updatePlantName">
                </div>
              </div>
              <div class="form-row"> 
                <div class="form-group col-md-6">
                  <label for="updateObsDate">관찰 날짜</label>
                  <input class="form-control" id="updateObsDate" type="date" name="date">
                </div>
                <div class="form-group col-md-6">
                  <label for="updateObsTime">관찰 시간</label>
                  <input class="form-control" id="updateObsTime" type="time" name="time">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="updateFarmType">스마트팜 종류</label>
                  <input type="text" class="form-control" id="updateFarmType">
                  </select>
                </div>
                <div class="form-group col-md-6">
                  <label for="updatePlantType">식물 종류</label>
                  <input class="form-control" id="updatePlantType" type="text">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-6">
                  <label for="updatePlantToLight" class="col-form-label">식물과 전등의 거리</label>
                  <input type="text" class="form-control" id="updatePlantToLight" placeholder="식물과 전등의 거리 (단위: cm)">
                </div>
                <div class="form-group col-md-6">
                  <label for="updatePlantLength" class="col-form-label">식물의 길이</label>
                  <input type="text" class="form-control" id="updatePlantLength" placeholder="식물의 길이 (단위: cm)">
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="updateLeafLength" class="col-form-label">잎의 길이</label>
                  <input type="text" class="form-control" id="updateLeafLength" placeholder="길이 (단위: cm)">
                </div>
                <div class="form-group col-md-4">
                  <label for="updateTemperature" class="col-form-label">온도</label>
                  <input type="text" class="form-control" id="updateTemperature" placeholder="온도 (단위: º)">
                </div>
                <div class="form-group col-md-4">
                  <label for="updateHumidity" class="col-form-label">습도</label>
                  <input type="text" class="form-control" id="updateHumidity" placeholder="습도 (단위: %)">
                </div>
              </div>
              <hr>
              <div class="form-group mb-3">
                <label for="customFile">사진</label>
                <div id="updateImg">
                </div>
                <hr>
                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="updateFiles" accept="image/gif, image/jpeg, image/png">
                  <label class="custom-file-label" for="customFile">이미지 파일만 가능 합니다. (jpg, png, 등등..)</label>
                </div>
              </div>
              <hr>
              <div class="form-group mb-12">
                <label for="updateNote">메모</label>
                <textarea class="form-control" id="updateNote" rows="4" style="margin-top: 0px; margin-bottom: 0px; height: 62px; resize: none;" maxlength="200"></textarea>
              </div>
            </form>
          </div>
          <div class="modal-footer d-flex justify-content-between">
            <button type="button" class="btn mb-2 btn-primary" id="updateContentBtn">일지 저장</button>
          </div>
        </div>
      </div>
    </div> <!-- update modal -->

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/simplebar.min.js"></script>
    <script src='js/jquery.stickOnScroll.js'></script>
    <script src="js/tinycolor-min.js"></script>
    <script src="js/config.js"></script>
    <script src='js/jquery.dataTables.min.js'></script>
    <script src='js/dataTables.bootstrap4.min.js'></script>
    <script>
      
    </script>
    <script src="js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
      getContentList();
      function getContentList() {
        $.ajax({
          url: '/getContentList',
          type: 'GET',
          async: false,
          success: function (data) {
            $('#dataTable-1').DataTable({
              autoWidth: true,
              "lengthMenu": [
                [10, 15, 20, -1],
                [10, 15, 20, "All"]
              ],
              "order": [ 2, "desc" ],
              data: data,
              columns:[
              {data: 'NUM'},
              {data: 'ID'},
              {data: 'DATE'}
              ],
              createdRow: function(row, data, dataIndex){
                $(row).find('td:eq(0)').attr('data-id', data.Id);
              }
            });
          },
          error: function (data, status) {
            alert('status : ' + status + '\n' + 'error : ' + data.responseJSON.error + '\n' + 'message : ' + data.responseJSON.message 
                    + '\n ----------------------------- \n' + data.responseJSON.trace);
          }
        });
      }

      $('#dataTable-1 tbody').on('click', 'tr', function() {
        var tr = $(this);
          var userId = tr.children().eq(1).text();
          var contentId = tr.children().eq(0).text();
          var sendData = {};
          sendData["userId"] = userId;
          sendData["contentId"] = contentId;
          $.ajax({
            url: '/getContent',
            type: 'GET',
            async: true,
            data: sendData,
            success: function (data) {
              $('#writer').val('');
              $('#observationDate').val('');
              $('#farmType').val('');
              $('#plantToLight').val('');
              $('#plantType').val('');
              $('#plantLength').val('');
              $('#leafLength').val('');
              $('#temperature').val('');
              $('#humidity').val('');
              $('#contentNote').val('');
              $('#plantName').val('');
              
              $('#writer').val(data.ID);
              $('#writer').attr('contentId', data.NUM);
              $('#observationDate').val(data.DATE);
              $('#farmType').val(data.FARMTYPE);
              $('#plantToLight').val(data.PLANTTOLIGHT + 'cm');
              $('#plantType').val(data.PLANTTYPE);
              $('#plantLength').val(data.PLANTLENGTH + 'cm');
              $('#leafLength').val(data.LEAFLENGTH + 'cm');
              $('#temperature').val(data.TEMPERATURE + 'ºC');
              $('#humidity').val(data.HUMIDITY + '%');
              $('#plantImage').html('<img src="' + data.IMAGELOC + '" style="max-width: 100%; height:auto;"/>');
              $('#contentNote').val(data.NOTE);
              $('#plantName').val(data.PLANTNAME);
              $('#eventModal').modal('show');
            },
            error: function (data, status) {
              alert('status : ' + status + '\n' + 'error : ' + data.responseJSON.error + '\n' + 'message : ' + data.responseJSON.message 
                      + '\n ----------------------------- \n' + data.responseJSON.trace);
            }
          });
        });
      
      $(document).ready(function(){
        window.dataLayer = window.dataLayer || [];
        function gtag() {
          dataLayer.push();
        }
        gtag('js', new Date());
        gtag('config', 'UA-56159088-1');

        //---------------
        
        $('#insertContent').click(function(){
          $.ajax({
            url: '/getSelectType',
            type: 'GET',
            // async: false,
            success: function (data) {
              var farmOption = '';
              var plantOption = '';
              $.each(data, function (i) {
                farmOption +='<option value="' + data[i] + '">' + data[i] + '</option>';
              });

              $('#insertFarmType').html(farmOption);

              $('#insertModal').modal('show');
            },
            error: function (data, status) {
              alert('status : ' + status + '\n' + 'error : ' + data.responseJSON.error + '\n' + 'message : ' + data.responseJSON.message 
                      + '\n ----------------------------- \n' + data.responseJSON.trace);
            }
          });

        });

        $('#insertContentBtn').click(function(){
          var userId = $('#userId').val().trim();

          if(userId && $('#obsDate').val() && $('#obsTime').val()){
            var form = $('#contentForm')[0];
            var sendData = new FormData();
            var time = $('#obsDate').val() + ' ' + $('#obsTime').val();
            sendData.append('userId', $('#userId').val());
            sendData.append('date', time);
            sendData.append('insertFarmType', $('#insertFarmType').val());
            sendData.append('insertPlantType', $('#palntType').val());
            sendData.append('insertPlantToLight', $('#insertPlantToLight').val());
            sendData.append('insertPlantLength', $('#insertPlantLength').val());
            sendData.append('insertLeafLength', $('#insertLeafLength').val());
            sendData.append('insertTemperature', $('#insertTemperature').val());
            sendData.append('insertHumidity', $('#insertHumidity').val());
            sendData.append('insertNote', $('#insertNote').val());
            sendData.append('insertPlantName', $('#insertPlantName').val());
            sendData.append('files', $('#files')[0].files[0]);
  
            $.ajax({
              type : 'POST',
              enctype: 'multipart/form-data',
              processData: false,
              contentType: false,
              url : '/insertContent',
              data : sendData,
              cache: false,
              success : function(data){
                $('#userId').val('');
                $('#obsDate').val('');
                $('#obsTime').val('');
                $('#insertFarmType').find('option:first').attr('selected', 'selected');
                $('#palntType').val('');
                $('#insertPlantToLight').val('');
                $('#insertPlantLength').val('');
                $('#insertLeafLength').val('');
                $('#insertTemperature').val('');
                $('#insertHumidity').val('');
                $('#insertNote').val('');
                $('#insertPlantName').val('');
                $('#insertModal').modal('hide');
                refreshList();
              },
              error: function (data, status) {
                alert('status : ' + status + '\n' + 'error : ' + data.responseJSON.error + '\n' + 'message : ' + data.responseJSON.message 
                        + '\n ----------------------------- \n' + data.responseJSON.trace);
              }
            });
          }
          else if (!userId){
            alert('이름을 입력하세요!');
            $('#userId').focus();
          }
          else if (!time){
            alert('날짜와 시간을 입력하세요!');
            $('#obsDate').focus();
          }

        });

        $('#updateContentBtn').click(function(){
          var pass = prompt("비밀번호를 입력하세요.");
          if(pass == "Mj1234"){
            var contentId = $('#writer').attr('contentid');
            var userId = $('#writer').val();
            var sendData = {};

            sendData["userId"] = userId;
            sendData["contentId"] = contentId;

            $('#updateModal').modal('show');
            
            var date = $('#observationDate').val().split(" ");

            $('#updateUserId').val($('#writer').val());
            $('#updateObsDate').val(date[0]);
            $('#updateObsTime').val(date[1]);
            $('#updateFarmType').val($('#farmType').val());
            $('#updatePlantToLight').val($('#plantToLight').val());
            $('#updatePlantType').val($('#plantType').val());
            $('#updatePlantLength').val($('#plantLength').val());
            $('#updateLeafLength').val($('#leafLength').val());
            $('#updateTemperature').val($('#temperature').val());
            $('#updateHumidity').val($('#humidity').val());
            $('#updateContentNote').val($('#contentNote').val());
            $('#updatePlantName').val($('#plantName').val());
            $('#updateImg').html('<img src="' + $('#plantImage img').attr('src') + '" style="max-width: 100%; height:auto;"/>');
            $('#updateNote').val($('#contentNote').val());

            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            // sendData['updateUserId'] = $('#updateUserId').val();
            sendData['updateOriImgLoc'] = $('#updateImg img').attr('src');

          }
        });
        
        $('#deleteContentBtn').click(function() {
          var pass = prompt("비밀번호를 입력하세요.");
          if(pass == "Mj1234"){
            var contentId = $('#writer').attr('contentid');
            var userId = $('#writer').val();
            var sendData = {};
  
            sendData["userId"] = userId;
            sendData["contentId"] = contentId;
  
            $.ajax({
              type : 'POST',
              url : '/deleteContent',
              data : sendData,
              success : function(data){
                $('#eventModal').modal('hide');
                refreshList();
              },
              error: function (data, status) {
              alert('status : ' + status + '\n' + 'error : ' + data.responseJSON.error + '\n' + 'message : ' + data.responseJSON.message 
                      + '\n ----------------------------- \n' + data.responseJSON.trace);
            }
            });
          }
        });

        $('input[type=file]').on('change', function () {
          if (window.FileReader) {
            var filename = $(this)[0].files[0].name;
          } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
          }
          $(this).siblings('label').text(filename);
        });

        function refreshList(){
          location.reload();
        }

      });
    </script>
  </body>
</html>