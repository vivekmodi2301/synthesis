Delete Attendence
<div class="col-lg-12 table-resposive" style="margin-left:10px; font-family:'Century Gothic';">
  <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
        <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                  <td>Search by Year
              <select name="year" onchange="search()" id="year" class="form-control" >
              <option value="">Select year</option>
            <option value="">2017</option>
            <option value="">2018</option>
              </select>
                  
                  <td>Select Month
              <select name="month" onchange="search()" id="month" class="form-control" >
                <option value="">Select Month</option>
                <option value="jan">January</option>
                <option value="feb">February</option>
                <option value="march">March</option>
                <option value="ap">April</option>
                <option value="may">May</option>
                <option value="june">June</option>
                <option value="july">July</option>
                <option value="aug">August</option>
                <option value="sept">September</option>
                <option value="oct">October</option>
                <option value="nov">November</option>
                <option value="decm">December</option>
              </select>
              </td>
                  
              </td>
            </tr>
          </table>
  </form>
 <div class="col-lg-12 table-resposive" style="margin-left:10px; font-family:'Century Gothic';">
    <table class="table table-bordered table-hover" id="spr_table">

    </table>