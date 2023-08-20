<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.ld.user.vo.ImsiVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
.mainbody{
	position:relative;
}
.maintext{
	width:100%;
	position: absolute;
}
.transtext{
	width:100%;
	position: absolute;
	top:4%;
}
.goog-trans{background:#f0f0f0}
.goog-trans-control{float:left;height:40px}
.goog-trans-control a{display:inline-block;padding:0 10px;height:40px;line-height:40px;background:#383838;color:#fff;text-align:center;text-decoration:none}
.goog-trans-info{float:left;margin:0 0 0 10px;height:40px;line-height:40px;color:#686868}
.goog-trans:after{display:block;visibility:hidden;clear:both;content:''}
</style>
</head>
<body>
	<textarea style="display:none;" id="maincontent">${imsi_view.imsi_content}</textarea>
	<div>
		<div class="maintext">
		
		</div>
		<div class="transtext">
			<div id="google_sectional_element" style="display:none"></div>
			<div class="goog-trans-section">
			    <div class="goog-trans" style="display:none">
			        <div class="goog-trans-control"></div>
			    </div>
			    <div id="google_translate_element_area" class="trans"></div>
			</div>
		</div>
	</div>
	
	<script src="//translate.google.com/translate_a/element.js?cb=googleSectionalElementInit&ug=section&hl=ko"></script>
	<script type="text/javascript">
	const maintext = document.getElementById("maincontent").innerText;
	const sentence = maintext.replace(/\n/gi,"");
	const resultsentence = sentence.split(".");
	let j=0;
	function googleSectionalElementInit() {
        new google.translate.SectionalElement({
            sectionalNodeClassName: 'goog-trans-section',
            controlNodeClassName: 'goog-trans-control',
            background: '#78E7FF'
        }, 'google_sectional_element');
    }
	google_initialized = false;

    function google_auto_translate()
    {
        if(google_initialized)
        {
            jQuery('a.goog-te-gadget-link')[0].click();
        }
        else if( jQuery('a.goog-te-gadget-link').length )
        {
            google_initialized = true;
            setTimeout(google_auto_translate, 500);
        }
        else{
            setTimeout(google_auto_translate, 100);
        }
    }

    jQuery(document).ready(function(){
        setTimeout(google_auto_translate, 1000);
    });
	while(resultsentence[j]){
        $(".maintext").append("<div>"+"<font id=\"resultsentence" + j + "\">" + resultsentence[j] + "</font>" + "</div>" + "<br>" + "<br>" + "<br>");
        $(".trans").append("<div>"+"<font id=\"transsentence" + j + "\">" + resultsentence[j] + "</font>"+ "</div>" + "<br>" + "<br>" + "<br>");
		j++;
	};
	</script>
</body>
</html>