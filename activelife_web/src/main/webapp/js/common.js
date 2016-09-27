/**
 * logan
 */
$(document).ready(function() {
	$(".goods_tab").each(function() {
		$(this).children("em").first().css("margin", "0");
	})

	/* 弹出分类菜单 */
	var id = 0;
	$("#category").hover(function() {
		$("#category_tree.none").show();
	}, function() {
		$("#category_tree.none").hide();

		$("#layer_item" + id).hide();
		$("#dorpdown_layer").hide();
		treehide();
	});
	function treehide() {
		var $obj = $("#category_item" + id);
		$obj.css({
			"background" : "none",
		});
		$obj.find("p").children("a").css("color", "#fff");
		$obj.find("h4").css("color", "#fff");
	}
	$("#category_tree ul").on("mouseover mouseout", "li", function(event) {
		if (event.type == "mouseover") {
			// 鼠标悬浮
			treehide();
			$("#layer_item" + id).hide();
			// 展现
			$("#dorpdown_layer").show();
			id = $(this).index() + 1;
			$("#layer_item" + id).show();
			$(this).children("h4").find("a").css("color", "#359939");
			$(this).css({
				"background" : "#fff",
			});
			$(this).find("p").children("a").css({
				"color" : "#359939"
			});
			$(this).find("h4").css({
				"color" : "#359939"
			});
		} else if (event.type == "mouseout") {
			// 鼠标离开
		}
	});
	$("#seach input").bind({
		focus : function() {
			$("#seach_placeholder").hide();
		},
		blur : function() {
			if ($(this).val().length <= 0)
				$("#seach_placeholder").show();
		}
	});

});//