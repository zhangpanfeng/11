<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="jquery-ui/themes/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="jcrop/jquery.Jcrop.css">
<link rel="stylesheet" type="text/css" href="css/web.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="jquery-ui/ui/jquery-ui.js"></script>
<script type="text/javascript" src="jcrop/jquery.Jcrop.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/activelife-submit.js"></script>
<script type="text/javascript" src="js/activelife-dialog.js"></script>

</head>
<body>
    <img src="images/floor.jpg" id="target"/>
    <div id="preview-pane">
        <div class="preview-container">
            <img src="images/floor.jpg" class="jcrop-preview" alt="Preview" />
        </div>
    </div>

    <form >
    <input type="hidden" name="customerId" value="2f1339b0-208e-11e5-b15b-1c6f656b3c0a" id="customerId"/>
    <input type="hidden" name="headPhoto" value="" id="headPhoto"/>
        <table>
            <tr>
                <td class="field_name">图片路径：</td>
                <td><input type="file" name="image" id="imageFile" /></td>
                <td><input type="hidden" value="<%=basePath%>" id="basePath" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="上传" id="fileUpload" /></td>
                <td></td>
            </tr>
        </table>
    </form>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function() {
        var jcrop_api, boundx, boundy, $preview = $('#preview-pane'), $pcnt = $('#preview-pane .preview-container'), $pimg = $('#preview-pane .preview-container img'),
        xsize = $pcnt.width(),
        ysize = $pcnt.height();
        
        var p_x, p_y, p_width, p_height;
        
        var api;
        


        
        myJcrop();

        $("#imageFile").change(function() {
            var file = this;
            var fileName = file.files[0].name;
            var position = fileName.lastIndexOf(".");
            var imageTypes = new Array();
            imageTypes.push("jpg");
            imageTypes.push("gif");
            imageTypes.push("jpeg");
            imageTypes.push("png");
            if (position != -1) {
                var suffix = fileName.substring(position + 1, fileName.length).toLowerCase();
                if ($.inArray(suffix, imageTypes) == -1) {
                    var option = {
                        content : "只支持[jpg], [gif], [jpeg], [png]格式的图片文件！"
                    };
                    activelife_dialog.showMessageDialog(option);
                } else {
                    //submit
                    var url = "uploadHeadPortrait.do?" + new Date();
                    var fileId = "imageFile";
                    activelife_submit.submitFile(url, fileId, finishUpload);
                }
            } else {
                var option = {
                    content : "只支持图片文件！"
                };
                activelife_dialog.showMessageDialog(option);
            }
        });


        
        function finishUpload(result) {
            if (result.statusCode == '200') {
                var url = result.attribute.url;
                var target = $("#target");
                var baseUrl = $("#basePath").val();
                target.attr("src", baseUrl + url);
                $pimg.attr("src", baseUrl + url);
                $("#headPhoto").val(url);
                //
                myJcrop();
                api.setImage(baseUrl + url);
            } else {
                var option = {
                    content : result.message
                };
                activelife_dialog.showMessageDialog(option);
            }
        }
        

        
        
        function myJcrop(){
            api = $("#target").Jcrop({
                boxWidth : 500,
                boxHeight : 500,
                setSelect : [ 0, 0, 150, 150 ], //设定4个角的初始位置
                maxSize : [ 500, 500 ],
                minSize : [ 20, 20 ],
                onChange : updatePreview,
                onSelect : updatePreview,
                aspectRatio : 1
            }, function() {
                // Use the API to get the real image size
                var bounds = this.getBounds();
                boundx = bounds[0];
                boundy = bounds[1];
                // Store the API in the jcrop_api variable
                jcrop_api = this;

                // Move the preview into the jcrop container for css positioning
                $preview.appendTo(jcrop_api.ui.holder);
            });
        }

        function updatePreview(c) {
            if (parseInt(c.w) > 0) {
                var rx = xsize / c.w;
                var ry = ysize / c.h;

                //
                p_x = c.x;
                p_y = c.y;
                p_width = c.w;
                p_height = c.h;

                //

                $pimg.css({
                    width : Math.round(rx * boundx) + 'px',
                    height : Math.round(ry * boundy) + 'px',
                    marginLeft : '-' + Math.round(rx * c.x) + 'px',
                    marginTop : '-' + Math.round(ry * c.y) + 'px'
                });
            }
        }
        
        function finishCut(result, entry) {
            if (result.statusCode == '200') {
                var option = {
                        content : "上传成功！"
                    };
                    activelife_dialog.showMessageDialog(option);
            } else {
                var option = {
                    content : result.message
                };
                activelife_dialog.showMessageDialog(option);
            }
        }

        $("#fileUpload").click(function() {
            var customerId = $("#customerId").val();
            var headPhoto = $("#headPhoto").val();
            var data = {
                    "customerId": customerId,
                    "headPhoto": headPhoto,
                    "x": p_x,
                    "y": p_y,
                    "width": p_width,
                    "height": p_height
            };
            var url = "editHeadPortrait.do?" + new Date();
            activelife_submit.submit(url, data, null, finishCut);
            
            return false;
        });

    });
</script>