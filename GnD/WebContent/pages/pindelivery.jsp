<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
        <html class=" js backgroundsize cssanimations csstransitions pointerevents" lang="en">

        <head>
            <meta http-equiv="content-type" content="text/html; charset=UTF-8">
            <meta charset="utf-8">

            <title>G & D</title>
      <link href="<c:url value='/resources/css/blazer.css'/>"
	media="screen, projection" rel="stylesheet" type="text/css">
<link href="<c:url value='/resources/css/style.css'/>"
	media="screen, projection" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="<c:url value='/resources/js/modernizr-2.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/jquery-1.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/blazer.js'/>"></script>
<link rel="stylesheet"
	href="<c:url value='/resources/css/jquery-ui.css'/>">
<script src="<c:url value='/resources/js/jquery-1.10.2.js'/>"></script>
<script src="<c:url value='/resources/js/jquery-ui.js'/>"></script>


<link href="<c:url value='/resources/css/infragistics.theme.css'/>"
	rel="stylesheet" />
<link href="<c:url value='/resources/css/infragistics.css'/>"
	rel="stylesheet" />
<script src="<c:url value='/resources/js/jquery.alertable.js'/>"></script>
<script src="<c:url value='/resources/js/velocity.min.js'/>"></script>
<script src="<c:url value='/resources/js/velocity.ui.min.js'/>"></script>
<link href="<c:url value='/resources/css/jquery.alertable.css'/>"
	rel="stylesheet" />
<script src="<c:url value='/resources/js/jquery.tabletojson.js'/>"></script>

<!-- Ignite UI Required Combined JavaScript Files -->
<script src="<c:url value='/resources/js/infragistics.core.js'/>"></script>
<script src="<c:url value='/resources/js/infragistics.lob.js'/>"></script>
        </head>




        <body>
        
        <%!
	public static final int PIN_STATUS_DELIVER = 72;
	%>
            <style>
                #checkboxSelectCombo,
                #checkboxSelectCombo:hover {
                    /*background-color: #f7f8f8 !important;*/
                    
                    border: 1px solid #9db5cd !important;
                }
                .ui-igcombo-buttonicon,
                .ui-igcombo-clearicon {
                    margin-left: 3px;
                    margin-top: -7px;
                    position: absolute;
                    top: 50%;
                }
                .ui-icon-triangle-1-s {
                    background-position: 0;
                }
                .ui-icon {
                    background-position: 0;
                    height: 16px;
                    width: 16px;
                }
                .ui-igcombo-clear {
                    display: none !important;
                }
            </style>

            <div class="page-header">
                <div class="page-header-wrapper container">
                    <div class="main-logo">
                        Giesecke &amp; Devrient
                    </div>
                    <div class="tab-menu dark">
                    <ul>
                    	<li id="icons"  ><a href="<c:url value='/loginuser/home'/>">Home</a></li>
                    	<li id="icons"><a href="<c:url value='/search/searchcard'/>">Search</a></li>
                    <c:if test="${username eq 'admin'}">
                        <li id="icons"><a href="<c:url value='/master/masterdb'/>">Master DB</a></li>
                        <li id="prototype"><a href="/GnD/shopfloor/misImoprt">MIS Import</a>
<!--                         <li id="styleguide"><a href="#">I/O Config</a></li> -->
<!--                         <li id="screens"><a href="#">Time-Out Config</a></li> -->
						<li id="prototype"><a href="/GnD/notification/getdailymails">Notifications</a>
						<li id="prototype" class="selected"><a href="/GnD/shopfloor/home">Shop floor</a></li>
					</c:if>					  
					 <c:if test="${username eq 'shopfloor'}">
						    <li id="prototype" class="selected"><a href="/GnD/shopfloor/home">Shop floor</a></li>
					  </c:if>  
					  <c:if test="${username eq 'warehouse'}">
						  <li id="prototype" class="selected"><a href="/GnD/shopfloor/home">Warehouse</a></li>
						  <li id="prototype"><a href="/GnD/shopfloor/misImoprt">MIS Import</a>
					  </c:if>
                        <li id="prototype"><a href="/GnD/search/getReport">Reports</a></li>                        
					      <li id="prototype"><a href="javascript:formSubmit()"> Logout</a>
                    </ul>
                    </div>
                </div>
            </div>
            <div class="main" style="">
                <div class="container main-conten">
                    <div class="left-content">
                        <div class="demo-left-nav" id="left-nav">
                            <div class="navigation">
                                <ul>
									<c:if test="${username eq 'admin'}">
										<li id="prototype" ><a href="/GnD/shopfloor/carddispatch">Card Production</a></li>
									
									 
										<li id="prototype"><a href="/GnD/shopfloor/carddilivery">card Delivery</a></li>
<!-- 										<li id="prototype" ><a href="/GnD/shopfloor/cardreturned">card Returned</a></li> -->
										<li id="prototype" ><a href="/GnD/shopfloor/cardredispatch">card Redispatch</a></li>
										<li id="prototype" ><a href="/GnD/shopfloor/carddestroy">Card Destroy</a></li>
										<li id="prototype"><a href="/GnD/shopfloor/carddeliverbyAWB">Card Delivery By AWB</a></li>
										<!--<li id="icons"><a href="<c:url value='/master/masterdb'/>">Master DB</a></li>-->
										<li id="prototype" ><a href="/GnD/shopfloor/changeAWB">Change AWB</a></li>
										<li id="prototype"  ><a href="/GnD/shopfloor/scanbyRSNtorto">RTO Scan by RSN</a></li>
										<li id="prototype"><a href="/GnD/shopfloor/scanbyAWBtorto">RTO Scan By AWB</a></li>
										<li id="prototype"><a href="/GnD/shopfloor/changeRTOAWB">Change RTO AWB</a></li>
									
									<li id="prototype" ><a href="/GnD/shopfloor/pindispatch">Pin Dispatch</a></li>
									<li id="prototype" class="selected"><a href="/GnD/shopfloor/pindelivery">Pin Delivery</a></li>
									<li id="prototype" ><a href="/GnD/shopfloor/pinreturned">Pin Returned</a></li>
									<li id="prototype"><a href="/GnD/shopfloor/pinredispatch">Pin Redispatch</a></li>
									<li id="prototype"><a href="/GnD/shopfloor/pindestroy">Pin Destroy</a></li>
							</c:if>
						</ul>
                            </div>
                        </div>

                    </div>

                    <div class="right-content" >
                      <audio id="audioid" style="display:none;" controls >
 					   <source src="<c:url value='/resources/audio/failure.mp3'/>" type="audio/mpeg"></source>
  					</audio>
                        <h2 class="blue-text">Pin Delivery</h2>
                        <form id="rtocardId" name="carddispatch" action="/GnD/shopfloor/test"  method="post">
                            <div class="row right-con">
                                <div class="col-md-2">
                                    <span class="blue-text">RSN Value</span>
                                    <div class="select-menu select-menu-native select-menu-light">
                                        <input id="rsn" name="text" type="number" class="text-field rsn" autofocus autocomplete="off"/>   
										<input id="decisionid" type="hidden" name="decision" value="<%=PIN_STATUS_DELIVER%>"/>
										<input type="submit" id="rsnbutton"	class="btn btn-only-img btn-only-img1 btn-s"/>
									</div>
                                </div>
                              </div>
                            </form>
                                  <div class="clear"></div>
			 	 <div id="wait" style="display:none;width:69px;height:65px;position:absolute;top:50%;left:50%;padding:2px;"><img src='/GnD/resources/img/loading.gif' width="64" height="64" /><br>Loading..</div>
							 <div id="savebutton" class="col-md-2">
             </div>
			<p id="count"></p>
	
				<table id="rtoscantable" class="table">
				</table>
			 <div class="clear"></div>
				</div>
				
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
						<form action="${logoutUrl}" method="post" id="logoutForm">
							<input type="hidden" name="${_csrf.parameterName}"	value="${_csrf.token}" />
						</form>
		</div>

				</div>
               
                <div class="clear"></div>
                <div id="footer" class="page-footer">
                    <div class="container">
                        <div class="footer-columns">
                            <div class="footer-left-column">
                                <div class="footer-version">
                                    <strong>Web Tracking Tool</strong> Version 1.0.14
                                </div>
                                <ul class="footer-links">
                                    <li><a href="#">Contact</a>
                                    </li>
                                    <li><a href="#">Site Terms</a>
                                    </li>
                                    <li><a href="#">Privacy</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="footer-right-column">
                                <div class="footer-logo">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
         
            <script>
            function formSubmit() {
				document.getElementById("logoutForm").submit();
		  }
            var successCount = 0;
    		var options = '<thead><tr><th>rsn</th><th>pinAWB</th><th>shortCode</th><th>fileName</th><th>information</th></tr></thead>';
    		function formSubmit() {
    			document.getElementById("logoutForm").submit();
    	  }
    		
    	    var frmrto = $('#rtocardId');	    
    	    frmrto.submit(function (ev) {
    	    	if($('#rsn').val().length === 0){
    	    		$.alertable.alert("Field Should not be empty", {
                 		  show: function() {
                 		    $(this.overlay).velocity('transition.fadeIn');        
                 		    $(this.modal).velocity('transition.flipBounceYIn');
                 		  },
                 		  hide: function() {
                 		    $(this.overlay).velocity('transition.fadeOut');
                 		    $(this.modal).velocity('transition.perspectiveUpOut');
                 		  } 
                 		}); 
    	    	}else{
                $.ajax({
                    url: frmrto.attr('action') ,
                     data: frmrto.serialize(),
                     type:"post",
                     success: function (data) {
                    	 $('#rsn').val('');
                    	 if(data.boolRes){
                    		 successCount+=1;
                    		 $('#count').html("Count="+successCount);
                    		 options += '<tr><td>' + data.rsn + '</td><td>'+ data.pinAWB + '</td><td>'+ data.shortCode + '</td><td>'+ data.fileName + '</td><td>'+ data.information + '</td></tr>';
                    		 $('#rtoscantable').html(options);
                    		 $('#rtoscantable').find('tbody').each(function(){
                  			    var list = $(this).children('tr');
                  			    $(this).html(list.get().reverse())
                  			})
                    		 $('#savebutton').html('<button id=savefile class="btn btn-l btn-blue ">save to file</button>');
                    	 }else{
                    		 var declinePerformance = $("#audioid")[0];
                    		 declinePerformance.play();
                    			$.alertable.alert("PIN is not in state to Deliver", {
                           		  show: function() {
                           		    $(this.overlay).velocity('transition.fadeIn');        
                           		    $(this.modal).velocity('transition.flipBounceYIn');
                           		  },
                           		  hide: function() {
                           		    $(this.overlay).velocity('transition.fadeOut');
                           		    $(this.modal).velocity('transition.perspectiveUpOut');
                           		  } 
                           		}); 
                    	 }               	
                    	 
                    },
                	error: function(){						
    				alert('Error while request..');
    			} 
                });
    	    	}
                ev.preventDefault();
            });
    	    $("#savebutton").click(function() {
      		  var filepath='';
      			var tableawb = $('#rtoscantable').tableToJSON();
      			
      			// window.location.href = '/GnD/master/savetofile'+dataArray;
     			var r = confirm("Click OK to download the file");
      			 if(r==true){
      			 $.ajax({
      				 contentType: 'application/json; charset=utf-8',
      				 dataType: 'json',
      				 type: 'POST',
      				 url: '/GnD/shopfloor/savetoFile?decision='+$('#decisionid').val(),
      				 data: JSON.stringify(tableawb),
      				 success: function(data){
      					 window.location.href = '/GnD/shopfloor/downloadfile?filepath='+data;
      				},
      				  error: function(){						
      					alert('Error while request..');
      				} 
      				 });
      					 
      			}else{
      				alert("you have cancelld a request");
      			}  
      		});
    	    $(document).ready(function(){
    	        $("#crdrtotrk").click(function(){
    	            $.ajax({
    	            	type:"post",
    	            	url: "/GnD/shopfloor/crdrtotrkmis?fromDate="+$('#fromdate').val()+"&toDate="+$('#todate').val(), 
    	            	success: function(result){
    	            		$.alertable.alert(result, {
                         		  show: function() {
                         		    $(this.overlay).velocity('transition.fadeIn');        
                         		    $(this.modal).velocity('transition.flipBounceYIn');
                         		  },
                         		  hide: function() {
                         		    $(this.overlay).velocity('transition.fadeOut');
                         		    $(this.modal).velocity('transition.perspectiveUpOut');
                         		  } 
                         		});
    	            }});
    	        });
    	    });
    	    
    	    
    	    $(function() {
    	        $( "#fromdate" ).datepicker();
    	      });
    	    $(function() {
    	        $( "#todate" ).datepicker();
    	      });
    	    $(document).ready(function(){
    	        $(document).ajaxStart(function(){
    	            $("#wait").css("display", "block");
    	        });
    	        $(document).ajaxComplete(function(){
    	            $("#wait").css("display", "none");
    	        });
    	        $("button").click(function(){
    	            $("#txt").load("demo_ajax_load.asp");
    	        });
    	    });
          /*   function checkRsn() {
     			var rsn = document.getElementById("rsn").value;				
     			if (rsn.length == 0 || rsn.length>10) {
     				alert("pls enter a valid rsn number");
     				document.getElementById("rsn").focus();
     				return false;
     			}
     			
     			document.carddispatch.action = "/GnD/shopfloor/test";
     			return true;

     		} */
            
            function formSubmit() {
				document.getElementById("logoutForm").submit();
		  }

    /*         function checkRsn() {
    			var rsn = document.getElementById("rsn").value;				
    			if (rsn.length == 0 || rsn.length>10) {
    				alert("pls enter a valid rsn number");
    				document.getElementById("rsn").focus();
    				return false;
    			}
    			
    			document.carddispatch.action = "/GnD/shopfloor/test";
    			return true;

    		} */
            
//             failure() {
//             	alert("hi");
//             }
         </script>
        </body>

        </html>
