<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/jquery.min.js"></script>
<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/easyui/easyloader.js"></script>
<link rel="stylesheet" type="text/css" href="css/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="css/easyui/themes/color.css">
<link rel="stylesheet" type="text/css" href="css/easyui/themes/default/easyui.css">
<style>
#top{
width:100%;
height:60px;
}
</style>
</head>
<body>
<div id="main" class="easyui-layout" style="width:100%;height:100%">
	<div data-options="region:'north',split:false" style="width:100%;height:200px"></div>
	<div id="west" title="菜单" data-options="region:'west',split:false,collapsible:true" style="width:10%;height:100%;overflow: hidden">
		<div class="easyui-accordion" style="width:100%;height:100%;">
			<div data-options="title:'title1'" style="width:100%;height:30px;">
			<div style="width:100%;padding:6px">
				<a id="bt1" href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g2',plain:true" style="width:100%;height:40px">title1</a>
				<a id="bt2" href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g2',plain:true" style="width:100%;height:40px">title2</a>
				<a id="bt3" href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g2',plain:true" style="width:100%;height:40px">title3</a>
				<a id="bt4" href="#" class="easyui-linkbutton" data-options="toggle:true,group:'g2',plain:true" style="width:100%;height:40px">title4</a>
			</div>
				
			</div>
			<div data-options="title:'title2'" style="width:100%;height:30px;"></div>
			<div data-options="title:'title3'" style="width:100%;height:30px;"></div>
			<div data-options="title:'title4'" style="width:100%;height:30px;"></div>
			
		</div> 
	</div>
	<div data-options="region:'east',split:false" style="width:90%;height:100%;">
		<div id="tt" class="easyui-tabs" style="width:100%;height:100%">   
				<div title="title1" data-options="closable:true,fit:true" style="padding:20px;">   
		        	<iframe scrolling="yes" frameborder="0"  src="test.html" style="width:100%;height:100%;"></iframe>
		    	</div>   
			    <div title="Tab2" data-options="closable:true">   
			        tab2    
			    </div> 
			    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true">   
			        tab3    
			    </div>    
		
		</div>  

	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#west .easyui-accordion .panel-title").bind('click', function(){
		var flag=true;
		var title=$(this).find(".l-btn-text").html();
		var tabsTile=$("#tt .tabs-title");
		$(tabsTile).each(function(i){
			if($(this).html()==title){
				$(this).click();
				flag=false;
				return;
			}
		})
		if(flag){
			$("#tt").tabs("add",{
	    		title:title,
	    		content:'Tab Body',
	        	closable:true,
	    	})
		}
    	
    }); 
})

</script>
</body>
</html>
