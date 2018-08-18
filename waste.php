<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<input type="checkbox" class="chk" value="1">
<input type="checkbox" class="chk" value="2">
<input type="checkbox" class="chk" value="3">
<input type="checkbox" id="selectAll">
<button onclick="sendMsg()">Click</button>

<script type="text/javascript">
    $('#selectAll').on('change', function() {
        $('.chk:checkbox').prop('checked', $(this).is(":checked"));
    });
</script>

    <script type="text/javascript">
        function sendMsg(){
            // alert(statuss);
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            alert(yourArray);
        }
    </script>