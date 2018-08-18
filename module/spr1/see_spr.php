SEE SPR
<form class="form-horizontal" action="index.php?mod=spr&do=show_spr"  method="post" enctype="multipart/form-data">
  <div class="form-group">
      <label class="col-lg-4 control-label">Select Class</label>
        <div class="col-lg-8">
  <select name="class" class="form-control" onchange="showpatt(this.value)">
    <option value="">Select Class</option>
  </select>
          </div>
      </div>
      <div class="form-group">
          <label class="col-lg-4 control-label">Select Patteren</label>
            <div class="col-lg-8">

  <select name="pattern" id="patt" class="form-control" >
    <option value="">Select Pattern</option>
  </select></div></div>

<div class="form-group">
  <div class="col-lg-8 col-lg-offset-4">
    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">See SPR</button>
    </div>
</div>
</form>
