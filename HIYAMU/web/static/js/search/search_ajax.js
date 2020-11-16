var json = null;
$(document).on("click","body",function(e)
{
    if(!$(e.target).hasClass("auto-element")&&!$(e.target).is("input#search"))
    {
        $("#auto-complete").animate({
            "height" : "0px"
        }, 200, function() {
            $("#auto-complete").empty();
            $("#search-tags").css({
                "border-radius":"10px"
            });
        })
    }
});
$(document).on("focusin propertychange paste input","#search",function(){
    var currentVal = $(this).val();
    if(currentVal === "")
    {
        $("#auto-complete").animate({
            "height" : "0px"
        }, 200, function() {
            $("#auto-complete").empty();
            $("#search-tags").css({
                "border-radius":"10px"
            });
        })
        return;
    }

    let result = [];
    const regex = new RegExp(currentVal, 'gi');
    for(let i = 0; i<json.length;i++)
    {
        if(json[i].search(regex)!=-1)
        {
            result.push(json[i]);
            if(result.length == 5)
            {
                break;
            }
        }
    }
    var obj = result;
    $("#auto-complete").empty();
    if(obj.length !== 0)
    {
        $("#search-tags").css({
            "border-radius":"10px 10px 0px 0px"
        });
    }
    else
    {
        $("#search-tags").css({
            "border-radius":"10px"
        });
    }
    $("#auto-complete").css("height","auto");
    for(let i = 0; i<obj.length;i++)
    {
        var tempTag = $("<p/>");
        tempTag.addClass("auto-element");
        tempTag = tempTag.text(obj[i]);
        tempTag.css("height", "0px");
        tempTag.appendTo("#auto-complete");
        tempTag.animate({
            "height": "18px"
        });
    }
});

$(document).ready(function(){
    $.ajax({
        url: "/search2",
        type: "POST",
        dataType: "json",
        success: function (result) {
            json = result;
        }
    });
});
