<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Employee ID</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll" name="roll" value="" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Employee Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_name" name="s_name" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="f_name" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Designation</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" name="class">
                        <option></option>
                        <option>Operator</option>
                        <option>Manager</option>
                    </select>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Self)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="f_mobile" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="s_mobile" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                    	<option></option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="cat">
                    	<option></option>
                        <option>GEN</option>
                        <option>OBC</option>
                        <option>SC</option>
                        <option>ST</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="dob" name="dob" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="ll_no" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="adrs" style="text-transform:capitalize;"></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="state" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="pin" value="" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <p><input type="checkbox" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="adrs" style="text-transform:capitalize;"></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="state" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="pin" value="" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
            </div>
      
      <div class="col-lg-6">
      		<div class="form-group">
                	<label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="10th_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.J.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_roll" name="10th_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>
      		<div class="form-group">
                	<label class="col-lg-4 control-label">D.O.L.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_%" name="10th_%" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Salary</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_school_name" name="10th_school_name" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Working Hour/ Per Day</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_board" name="10th_board" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (IN)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_roll" name="12th_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (OUT)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="12th_%" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            
                <div class="form-group">
                	<label class="col-lg-4 control-label">Joining Person :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="batch">
                    	<option></option>
                        <option>Mr. Shwet Sir</option>
                        <option>Mr. Manoj Sir</option>
                        <option>Mr. Jethmal Sir</option>
                        <option>Mrs. Swaran Rekha Mam</option>
                        <option>Other</option>
                    </select>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Reference</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="12th_%" value="" style="text-transform:capitalize;">
                    </div>
            </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"></textarea>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Resume</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="propic" value="">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="propic" value="">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <img src="images/pna.jpg" height="200" width="100%" />
                    </div>
                </div>
      		
            <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                    </div>
                </div>
      </div>
</form>
</div>