<form class="form-horizontal"  method="post" enctype="multipart/form-data">
  <div class="form-group">
      <label class="col-lg-4 control-label">Select Class</label>
        <div class="col-lg-8">
  <select name="class" class="form-control" onchange="showpatt(this.value)">
    <option value="">Select Class</option>
    <option value="">12th Bio</option>
  </select>
          </div>
      </div>
      <div class="form-group">
          <label class="col-lg-4 control-label">Select Patteren</label>
            <div class="col-lg-8">

  <select name="pattern" id="patt" class="form-control" >
    <option value="">Select Pattern</option>
    <option value="">NEET Pattern</option>
  </select></div></div>

  <div class="form-group">
      <label class="col-lg-4 control-label">Upload CSV file</label>
        <div class="col-lg-8">

<input type="file" name="csv" >
</div></div>
<div class="form-group">
  <div class="col-lg-8 col-lg-offset-4">
    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">Upload SPR</button>
    </div>
</div>
</form>
