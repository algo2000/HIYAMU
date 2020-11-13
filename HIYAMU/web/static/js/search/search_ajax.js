var oldVal = "";
$("#search").on("focusout",function ()
{
    $("#auto-complete").empty();
});
$("#search").on("focusin propertychange keyup paste input", function() {
    var currentVal = $(this).val();

    $.ajax({
        url: "/search",
        type: "POST",
        dataType : "json",
        data:
            {
                searchData : currentVal
            },
        success: function(result){
            console.log(typeof(result));
            var obj = result;
            console.log(obj);
            $("#auto-complete").empty();
            for(let i = 0; i<obj.length;i++)
            {
                var tempTag = $("<p/>");
                tempTag.addClass("auto-element");
                tempTag.text(obj[i].name + ":" + obj[i].value).appendTo("#auto-complete");
            }
        }
    })
});
