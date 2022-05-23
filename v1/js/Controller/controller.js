
 var app = angular.module('PMS', ['ngMaterial', 'ngMessages','ngTable','ngMdBadge', 'chart.js']);


 //EXCEL START

 app.factory('Excel',function($window){
        var uri='data:application/vnd.ms-excel;base64,',
            template='<html xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns=""><head><!--[if gte mso 9]><xml><x:ExcelWorkbook><x:ExcelWorksheets><x:ExcelWorksheet><x:Name>{worksheet}</x:Name><x:WorksheetOptions><x:DisplayGridlines/></x:WorksheetOptions></x:ExcelWorksheet></x:ExcelWorksheets></x:ExcelWorkbook></xml><![endif]--></head><body><table>{table}</table></body></html>',
            base64=function(s){return $window.btoa(unescape(encodeURIComponent(s)));},
            format=function(s,c){return s.replace(/{(\w+)}/g,function(m,p){return c[p];})};
        return {
            tableToExcel:function(tableId,worksheetName){
                var table=$(tableId),
                    ctx={worksheet:worksheetName,table:table.html()},
                    href=uri+base64(format(template,ctx));
                return href;
            }
        };
    })


//EXCEL END

	.controller('MainController', ['Excel', '$timeout','$scope','$http','$mdDialog','NgTableParams','$mdSidenav','$window','$location','$filter',
		function(Excel,$timeout,$scope,$http,$mdDialog,NgTableParams,$mdSidenav,$window,$location,$filter,fileReader){

			$scope.exportToExcel=function(tableId,sheet_name){ // ex: '#my-table'
			console.log(tableId);
            var exportHref=Excel.tableToExcel("#"+tableId,sheet_name);
            $timeout(function(){location.href=exportHref;},100); // trigger download
        }

        $scope.inspection_template_Items = {};
        $scope.indicator ={}
        $scope.Target = {}



        $scope.vm= {};
        $scope.loggedIn = false;

        $scope.current_Page = '';

        $scope.Selected_Activity_Title ='';
        $scope.Selected_Activity_ID ='';

        $scope.Sub_Activity_edit = {};

		$scope.notification_count;

        $scope.initialize_indicator = () =>{
        	$scope.indicator.DBM = false
        	$scope.indicator.PBB = false
        	$scope.indicator.DENR = false
        	$scope.indicator.OPCR = false
        	$scope.indicator.DPCR = false

        	$scope.Target.jan = 0
        	$scope.Target.feb = 0
        	$scope.Target.mar = 0
        	$scope.Target.apr = 0
        	$scope.Target.may = 0
        	$scope.Target.jun = 0
        	$scope.Target.jul = 0
        	$scope.Target.aug = 0
        	$scope.Target.sep = 0
        	$scope.Target.oct = 0
        	$scope.Target.nov = 0
        	$scope.Target.dec = 0

        	$scope.Target_Budget.jan_budget = 0
        	$scope.Target_Budget.feb_budget = 0
        	$scope.Target_Budget.mar_budget = 0
        	$scope.Target_Budget.apr_budget = 0
        	$scope.Target_Budget.may_budget = 0
        	$scope.Target_Budget.jun_budget = 0
        	$scope.Target_Budget.jul_budget = 0
        	$scope.Target_Budget.aug_budget = 0
        	$scope.Target_Budget.sep_budget = 0
        	$scope.Target_Budget.oct_budget = 0
        	$scope.Target_Budget.nov_budget = 0
        	$scope.Target_Budget.dec_budget = 0
        }

        $scope.Selected_Year = 0;

        $scope.to_date = function(d){
				return $filter('date')(d, "yyyy-MM-dd");
			};

		$scope.SearchData;
		$scope.mis_dashboard;

        


   //      $scope.API_TEST = () =>{

   //      	$http.post('../rest-api-authentication/api/login.php',{
			// 			 "firstname" : "Mark Elijah",
			// 			 "lastname" : "Balofinos",
			// 			 "email" : "markelijahb@pcsd.gov.ph",
			// 			 "password" : "666"
			// 			}).then(function(data){

   //      		$scope.api_result = data.data;

   //      		if(data.data.message == "Successful login."){
   //      				$scope.setCookie("jwt", data.data.jwt, 1);
   //      				alert("Successful login.")
   //      		}else{
   //      			alert("Login Failed")

   //      		}
        		
   //      		console.log(data.data);

			// });
   //      };//end of API Test

   //       $scope.show_jwt = () =>{
   //       	$http.post('http://192.168.0.111/rest-api-authentication/api/use_jwt2.php')
         	

   //      	// var jwt = $scope.getCookie('jwt');
   //      	// $scope.API_TEST_validate(jwt)
			// //console.log(jwt)
   //      }

  //        $scope.setCookie = (cname, cvalue, exdays) => {
		// 			    var d = new Date();
		// 			    d.setTime(d.getTime() + (exdays*24*60*60*1000));
		// 			    var expires = "expires="+ d.toUTCString();
		// 			    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
		// 			    var jehehey = $scope.getCookie('jwt');
		// 			    console.log(jehehey)
		// 			};
		// // get or read cookie
		// $scope.getCookie = (cname) =>{
		//     var name = cname + "=";
		//     var decodedCookie = decodeURIComponent(document.cookie);
		//     var ca = decodedCookie.split(';');
		//     for(var i = 0; i <ca.length; i++) {
		//         var c = ca[i];
		//         while (c.charAt(0) == ' '){
		//             c = c.substring(1);
		//         }
		 
		//         if (c.indexOf(name) == 0) {
		//             return c.substring(name.length, c.length);
		//         }
		//     }
		//     return "";
		// }

	// $scope.API_TEST_validate = (jwt) =>{

 //        	$http.post('../rest-api-authentication/api/validate_token.php',{
	// 					 "jwt" : jwt
	// 						}).then(function(data){

 //        		$scope.api_result = data.data;

 //        		if(data.data.message == "Access granted."){
 //        				alert(data.data.message)
 //        		}else{
 //        			alert("Login Failed")

 //        		}
        		
 //        		console.log(data.data);

	// 		});
 //        };//end of API Test

 //        $scope.API_TEST_login = () =>{

 //        	$http.post('../rest-api-authentication/api/login.php',{
	// 					 "firstname" : "Mark Elijah",
	// 					 "lastname" : "Balofinos",
	// 					 "email" : "markelijahb@pcsds.gov.ph",
	// 					 "password" : "666"
	// 					}).then(function(data){

 //        		$scope.api_result = data.data;

 //        		if(data.data.message == "Successful login."){
 //        			$scope.setCookie("jwt", data.data.jwt, 1);
 //        				alert(data.data.jwt)
 //        		}else{
 //        			alert("Login Failed")

 //        		}
        		
 //        		console.log(data.data);

	// 		});
 //        };//end of API Test

   //      $scope.Create_user_API_TEST = (user) =>{

   //      	$http.post('../rest-api-authentication/api/create_user.php',{
			// 			 "firstname" : user.firstname,
			// 			 "lastname" : user.lastname,
			// 			 "email" : user.email,
			// 			 "division" : user.division,
			//              "IS_Role" : user.IS_Role,
			//              "status"  : user.status,
			// 			 "password" : user.password
			// 			}).then(function(data){

   //      		$scope.api_result = data.data;
   //      		console.log(data.data);

			// });
   //      };//end of API Test


        $scope.get_Users = () =>{
        	
        	$http.post('https://pcsd.gov.ph/rest-api-authentication/api/get_Users.php').then(function(data){

        		$scope.user_list = data.data;
        		console.log(data.data);

			});

        };//end of get_Users

        $scope.AddAccount = (ev) =>{
        	$mdDialog.show({
	        contentElement: '#' + 'create_user',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

        };//end of AddAccount

        $scope.create_new_user = (user) =>{
        	// "IS_Role" : user.IS_Role,
        	// "status"  : user.status,
        	console.log(user)
        	$http.post('https://pcsd.gov.ph/rest-api-authentication/api/create_user.php',{
						 "firstname" : user.firstname,
						 "middlename" : user.middlename,
						 "lastname" : user.lastname,
						 "email" : user.email,
						 "division" : user.division,
						 "level" : user.level,
						 "password" : user.user_key,
						 "employee_no" : user.employee_no
						}).then(function(data){
							console.log()

							if(data.data.message == "User was created."){
								Swal.fire({
								  type: 'success',
								  title: 'Tagumpay!',
								  text: 'Account successfully created.',
								  confirmButtonText: 'OK'
					            });
								$scope.get_Users();

							}

        		$scope.api_result = data.data;
        		console.log(data.data);

			});


        }//end of create_new_user

        $scope.logIn = function(userName,pWord){

        	// alert('http://192.168.0.111');


        	$http.post('https://pcsd.gov.ph/rest-api-authentication/api/login.php',{
        			"email":userName,
        			"password":pWord
        		}).then(function(data){
			// $http.post('././pages/login/model/login.php',{"username":userName,"password":pWord}).then(function(data){

        		if(data.data.message == "Successful login."){
        			console.log(data.data)

        			// $scope.setCookie("jwt", data.data.jwt, 1);
        			$scope.loggedIn = true;
					//$scope.set_User_Name();
					// $scope.set_User_Level(data.data.user_level,
					// 					  data.data.user_division,
					// 					  data.data.user_id);

					$scope.loggedin()

					
					
					setTimeout(function() {
										 Swal.fire({
					  type: 'success',
					  title: 'Welcome',
					  text: 'Successfully Logged-in',
					  confirmButtonText: 'OK'
					            }).then(() => {
					                  //location.reload();
					                 $scope.get_accomp_Report_yearly($scope.Selected_Year,$scope.Selected_Year)
					$scope.get_Indicators_Year($scope.Selected_Year)
					            }, 1000);
					        });
        				//alert(data.data.jwt)
        		}else{
        			$scope.loggedIn = false;
        			Swal.fire({
					  type: 'error',
					  title: 'Invalid Username/Password',
					  text: 'Please try again.'
					})

					$scope.vm = {};

        		}
				
				
			

				//location.reload();
				//$scope.loggedIn = data.data;

				console.log($scope.loggedIn);

			});

        }


        $scope.change_Password = (ev) =>{


        	$mdDialog.show({

		templateUrl: './pages/user_management/modals/changePassword.html',
		parent: angular.element(document.body),
		targetEvent: ev,
		clickOutsideToClose: true,
		scope: $scope,
		// multiple: true,
		preserveScope: true,
		fullscreen: $scope.customFullscreen // Only for -xs, -sm breakpoints.

	})
        }

        $scope.changePasswordData = (user) =>{
// "password" : user.user_key

                $http.post('/rest-api-authentication/api/changePassword.php',{
                        "password" : user.user_key
                        
                }).then(function(data){
                        console.log()

                        if(data.data.message == "Success"){
                                Swal.fire({
                                        type: 'success',
                                        title: 'Tagumpay!',
                                        text: 'Account successfully created.',
                                        confirmButtonText: 'OK'
                                }).then((result) => {
                                        if (result.value) {
                                                location.reload();
                                        }
                                });


                        }

        		$scope.api_result = data.data;
        		console.log(data.data);

                });
        };


        $scope.vm={};

      $scope.accountType = ["MIS","FIS","Focal"];


	  $scope.AllMonths = [
	  	{ value: 1, name: 'January' },
	    { value: 2, name: 'February' },
	    { value: 3, name: 'March' },
	    { value: 4, name: 'April' },
	    { value: 5, name: 'May' },
	    { value: 6, name: 'June' },
	    { value: 7, name: 'July' },
	    { value: 8, name: 'August' },
	    { value: 9, name: 'September' },
	    { value: 10, name: 'October' },
	    { value: 11, name: 'November' },
	    { value: 12, name: 'December' }

	  ];

	   $scope.AllYears = [
	    { value: 2022, name: '2022' },
	   	{ value: 2021, name: '2021' },
	    { value: 2020, name: '2020' }
	   ];


	  $scope.MFO = [
	  	{ value: 'General Administrative Services', name: 'General Administrative Services' },
	    { value: 'Advocacy, Communications and Education', name: 'Advocacy, Communications and Education' },
	    { value: 'ECAN Monitoring and Evaluation System', name: 'ECAN Monitoring and Evaluation System' },
	    { value: 'ECAN Zoning', name: 'ECAN Zoning' },
	    { value: 'Knowledge and Research Management', name: 'Knowledge and Research Management' },
	    { value: 'Resource Mobilization and Partnership Development', name: 'Resource Mobilization and Partnership Development' },
	    { value: 'Operation of Strategic Environmental Plan Clearance System', name: 'Operation of Strategic Environmental Plan Clearance System' },
	    { value: 'Wildlife and Cave Management', name: 'Wildlife and Cave Management' }


	  ];


	  // $scope.Divisions = [
	  // 	{ value: 'FAD', name: 'FAD' },
	  //   { value: 'EEED', name: 'EEED' },
	  //   { value: 'EMED', name: 'EMED' }


	  // ];

	  $scope.Divisions = [
        {"name": "AFD"},
        {"name": "OED"},
        {"name": "EEED"},
        {"name": "EMED"},
        {"name": "EPRPD"},
        {"name": "EZMED"},
        {"name": "SOUTH"},
        {"name": "NORTH"},
        {"name": "CALAMIAN"}

    ];


    $scope.commitment = [
    	 {"name": "DBM/GAA","value":"DBM"},
        {"name": "PBB Requirement","value":"PBB"},
        {"name": "DENR","value":"DENR"},
        {"name": "OPCR","value":"OPCR"},
        {"name": "DPCR","value":"DPCR"}



    ];


        $scope.user_level = '';
        $scope.user_name = '';


        $scope.filterval = '';

        $scope.select_data_period = (radio_value) =>{

        	switch(radio_value){
        		case 'year':
        			$scope.period_yr = true;
        			$scope.period_month = false;
        			$scope.period_quarter = false;
        		break;

        		case 'month':
        			$scope.period_yr = false;
        			$scope.period_month = true;
        			$scope.period_quarter = false;
        		break;

        		case 'quarter':
        			$scope.period_yr = false;
        			$scope.period_month = false;
        			$scope.period_quarter = true;
        		break;


        	}
        	
        }


        $scope.save_Main_activity = function(MA_data){

        	$http.post('././pages/input_Activities/model/save_main_activity.php',{"Title":MA_data.Title,"Coding" : MA_data.Coding,"MFONo":MA_data.MFONo,"yr":MA_data.yr,"division":MA_data.division}).then(function successCallback(response){
				console.log(response.data);
				if(response.data.message == "Success"){
						Swal.fire(
							'Saved!',
							response,
							'success'
							)
						
						
						$scope.get_Main_activity(MA_data.yr);

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
				});

      	};

        $scope.Main_Activity_edit = {};

        $scope.show_edit_Main_activity_dialog= function(ev,data){

        	console.log(data)

			$scope.Main_Activity_edit.yr = data.yr;
			$scope.Main_Activity_edit.MFONo = data.MFONo;
			$scope.Main_Activity_edit.Title = data.Title;
			$scope.Main_Activity_edit.Coding = data.Coding;
			$scope.Main_Activity_edit.idMainActivities = data.idMainActivities;

			$mdDialog.show({
	        contentElement: '#' + 'edit_Main_activity',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};


		$scope.save_Main_Act_edit = (data) =>{
			var fd = new FormData();

			  fd.append('idMainActivities',data.idMainActivities);
			  fd.append('yr',data.yr);
			  fd.append('MFONo',data.MFONo);
			  fd.append('Title',data.Title);
			  fd.append('Coding',data.Coding);
			  // AJAX request
			  $http({
			   method: 'post',
			   url: '././pages/input_Activities/model/update_Main_Act.php',
			   data: fd,
			   headers: {'Content-Type': undefined},
			  }).then(function successCallback(response) { 
			    if(response.data.message == "Edited"){
						Swal.fire(
							'Edited!',
							response,
							'success'
							)
						
						$scope.get_Main_activity(data.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
			  });

		};//end of edit Main Activity

		$scope.Delete_main_act = (ev,data) =>{
			Swal.fire({
					  title: 'Are you sure?',
					  text: "This will PERMANENTLY remove record from database.",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#85C1E9',
					  cancelButtonColor: '#F1948A',
					  confirmButtonText: 'Yes, delete the record.'
					}).then((result) => {
					  if (result.value) {
					  	$http.post('././pages/input_Activities/model/delete_main_act.php',{"id":data}).then(function successCallback(response){

					  		if(response.data.message == "Deleted"){
						Swal.fire(
							'Deleted!',
							response,
							'success'
							)
						// location.reload();
						$scope.get_Main_activity($scope.Main_Activity_edit.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
											
						});
					    

					  }
					})


		};//end of Delete_main_act

		$scope.get_notification_count = () =>{


			$http.get('././pages/get_notification_count.php').then(function(data){

			        		$scope.notification_count = data.data;
			        		// console.log(data.data);

						});

			setTimeout(function(){ $scope.get_notification_count(); }, 30000);
		};

		$scope.get_notifications = () =>{

			$http.post('././pages/get_notification.php').then(function(data){

        		$scope.Notification_List = data.data;
        		console.log(data.data);

			});
		}


		$scope.show_notification_table= (ev) =>{

			$scope.get_notifications();

			$mdDialog.show({
	        contentElement: '#' + 'notifications_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });


		};


		$scope.notif_seen = (notifID) =>{
				
				Swal.fire({
					  title: 'Remove Notification?',
					  text: "This will REMOVE remove record from notifications.",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#85C1E9',
					  cancelButtonColor: '#F1948A',
					  confirmButtonText: 'Yes, remove the notification.'
					}).then((result) => {
					  if (result.value) {
					  	//alert(notifID);
					  	$http.post('././pages/remove_notif.php',{"id":notifID}).then(function successCallback(response){
					  		$scope.get_notifications();
					  		$scope.get_notification_count();

					  		if(response.data == "Success"){
						Swal.fire(
							'Deleted!',
							response,
							'success'
							)
						// location.reload();
						//$scope.get_Main_activity($scope.Main_Activity_edit.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
						}	
											
												

					});
					    
					  };//end of if (result.value)
					})

		};


        $scope.get_Main_activity = function(MA_yr){

        	//alert(MA_yr);
        	$http.post('././pages/input_Activities/model/get_main_activity.php',{"yr":MA_yr}).then(function(data){

        		$scope.Main_Activity_List = data.data;
        		console.log(data.data);

			});
		};


        $scope.get_Sub_activity = function(MA_yr){

        	//alert(MA_yr);
        	$http.post('././pages/input_Activities/model/get_sub_activity.php',{"yr":MA_yr}).then(function(data){

        		$scope.Sub_Activity_List = data.data;
        		console.log(data.data);

			});
        };


        $scope.edit_sub_activity = (ev,name) =>{
        	// alert(name)

        }

        $scope.show_edit_Sub_activity_dialog= function(ev,data){

        	console.log(data)

			$scope.Sub_Activity_edit.idsubactivities = data.idsubactivities;
			$scope.Sub_Activity_edit.Title = data.Title
			$scope.Sub_Activity_edit.Coding = data.Coding

			$mdDialog.show({
	        contentElement: '#' + 'edit_Sub_activity',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};



		$scope.show_subAct_list = (ev,id) =>{
				$http.post('././pages/input_Activities/model/get_sub_activity_edit.php',{"id":id}).then(function(data){

        		$scope.Sub_Activity_List_edit = data.data;
        		console.log(data.data);

			});

				$mdDialog.show({
	        contentElement: '#' + 'Sub_Activity_List_edit',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });
		}//end of show_subAct_list


		$scope.save_Sub_Act_edit = (data) =>{
			var fd = new FormData();

			  fd.append('idsubactivities',data.idsubactivities);
			  fd.append('Title',data.Title);
			  fd.append('Coding',data.Coding);
			  // AJAX request
			  $http({
			   method: 'post',
			   url: '././pages/input_Activities/model/update_Sub_Act.php',
			   data: fd,
			   headers: {'Content-Type': undefined},
			  }).then(function successCallback(response) { 
			    if(response.data.message == "Edited"){
						Swal.fire(
							'Edited!',
							response,
							'success'
							)
						
						$scope.get_sub_activity(data.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
			  });

		}//end of save_Sub_Act_edit

		$scope.Delete_sub_act = (ev,data) =>{
			Swal.fire({
					  title: 'Are you sure?',
					  text: "This will PERMANENTLY remove record from database.",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#85C1E9',
					  cancelButtonColor: '#F1948A',
					  confirmButtonText: 'Yes, delete the record.'
					}).then((result) => {
					  if (result.value) {
					  	$http.post('././pages/input_Activities/model/delete_sub_act.php',{"id":data}).then(function successCallback(response){

					  		if(response.data.message == "Deleted"){
						Swal.fire(
							'Deleted!',
							response,
							'success'
							)
						// location.reload();
						$scope.get_Main_activity($scope.Main_Activity_edit.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
											
												

										});
					    

					  }
					})


		}//end of Delete_sub_act
		
	$scope.set_target_dec = ()=>{
	     Target.dec= Target.dec_tar
	}

		$scope.indicator_edit;
		$scope.Target_Budget;
		$scope.Target_dead;
		$scope.Target_dead = {};
		$scope.Target = {};
		
		
		
// 		$scope.Monthly_Target = ['jan','feb','mar','apr'];
		$scope.Target_Budget = {};
		$scope.Target_edit={}


		$scope.edit_indicator_show_Dialog = (ev,indicators_data) =>{
		    
		    $scope.Target_edit = {}
		    
				console.log(indicators_data)
				$scope.indicator_edit = indicators_data;
				// $scope.Target_Budget = indicators_data;
				// $scope.Target = indicators_data;
				// $scope.Target_dead = indicators_data;
				
				$scope.Target.jan = indicators_data.jan
				$scope.Target.feb = indicators_data.feb
				$scope.Target.mar = indicators_data.mar
				$scope.Target.apr = indicators_data.apr
				$scope.Target.may = indicators_data.may
				$scope.Target.jun = indicators_data.jun
				$scope.Target.jul = indicators_data.jul
				$scope.Target.aug = indicators_data.aug
				$scope.Target.sep = indicators_data.sep
				$scope.Target.oct = indicators_data.oct
				$scope.Target.nov = indicators_data.nov
				$scope.Target.dec_tar = indicators_data.dec_tar
				
				$scope.Target_Budget.jan_budget = indicators_data.jan_budget
				$scope.Target_Budget.feb_budget = indicators_data.feb_budget
				$scope.Target_Budget.mar_budget = indicators_data.mar_budget
				$scope.Target_Budget.apr_budget = indicators_data.apr_budget
				$scope.Target_Budget.may_budget = indicators_data.may_budget
				$scope.Target_Budget.jun_budget = indicators_data.jun_budget
				$scope.Target_Budget.jul_budget = indicators_data.jul_budget
				$scope.Target_Budget.aug_budget = indicators_data.aug_budget
				$scope.Target_Budget.sep_budget = indicators_data.sep_budget
				$scope.Target_Budget.oct_budget = indicators_data.oct_budget
				$scope.Target_Budget.nov_budget = indicators_data.nov_budget
				$scope.Target_Budget.dec_budget = indicators_data.dec_budget
				
				$scope.Target_dead.jan_dead = indicators_data.jan_dead
				$scope.Target_dead.feb_dead = indicators_data.feb_dead
				$scope.Target_dead.mar_dead = indicators_data.mar_dead
				$scope.Target_dead.apr_dead = indicators_data.apr_dead
				$scope.Target_dead.may_dead = indicators_data.may_dead
				$scope.Target_dead.jun_dead = indicators_data.jun_dead
				$scope.Target_dead.jul_dead = indicators_data.jul_dead
				$scope.Target_dead.aug_dead = indicators_data.aug_dead
				$scope.Target_dead.sep_dead = indicators_data.sep_dead
				$scope.Target_dead.oct_dead = indicators_data.oct_dead
				$scope.Target_dead.nov_dead = indicators_data.nov_dead
				$scope.Target_dead.dec_dead = indicators_data.dec_dead
				

				
				// for(var i = 0; i < $scope.Monthly_Target.length; i++){
    //             var obj = $scope.Target_Budget;
    //             var mon = String($scope.Monthly_Target[i]);
                
    //             for (var property in $scope.Target) {
				    
				//     if(property == $scope.Monthly_Target[i]){
				        
				//         var Monthly_Target_Month = $scope.Monthly_Target[i]
				        
				//         $scope.Target_BudgetZ.push({Monthly_Target_Month : $scope.Target[property]});
    //                     }
				        
				//     }
				    
				// }
            
    //         console.log($scope.Target_BudgetZ);
            
            
            
            //  console.log($scope.Target_BudgetZ);

// 				alert($scope.Target_Budget)
				$mdDialog.show({

	        contentElement: '#' + 'edit_indicator_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

			
		};

		$scope.delete_indicator = (indicator_edit,Selected_Year) =>{
			console.log(indicator_edit.idindicators)
			Swal.fire({
					  title: 'Are you sure?',
					  text: "This will PERMANENTLY remove record from database.",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#85C1E9',
					  cancelButtonColor: '#F1948A',
					  confirmButtonText: 'Yes, delete the record.'
					}).then((result) => {
					  if (result.value) {
					  	$http.post('././pages/input_Activities/model/delete_indicator.php',{"id":indicator_edit.idindicators}).then(function successCallback(response){

					  		if(response.data.message == "Deleted"){
						Swal.fire(
							'Deleted!',
							response,
							'success'
							)
						// location.reload();
						$scope.get_Indicators_Year(Selected_Year)
						console.log(Selected_Year)
						//$scope.get_Main_activity($scope.Main_Activity_edit.yr)

					}else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
											
						});
					    

					  }
					})

		}

///////////////////////////////////DIALOGS
        $scope.show_input_accomplishment_dialog = function(ev,idindicators,indicatorTitle){

        	$scope.Selected_Activity_Title = indicatorTitle;
        	$scope.Selected_Activity_ID = idindicators;

        	 

			
			$mdDialog.show({

	        contentElement: '#' + 'input_accomplishment_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

			$scope.set_QR_value(indicatorTitle,"Submission_INPUT_QR");

			

		};

		$scope.show_edit_accomplishment_dialog = (ev,idindicators,indicatorTitle) =>{
			$scope.Selected_Activity_Title = indicatorTitle;
        	$scope.Selected_Activity_ID = idindicators;

			$mdDialog.show({

	        contentElement: '#' + 'edit_accomplishment_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });



		};

		


		$scope.show_input_sub_activity_dialog = function(ev,data){
			
			$scope.Selected_Activity_ID = data.idMainActivities;
			$scope.Selected_Activity_Title = data.Title;
			$scope.Selected_Activity_Code = data.Coding;
			//alert($scope.Selected_Activity_ID);


			$mdDialog.show({
	        contentElement: '#' + 'input_sub_activity_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};

		$scope.show_input_indicator_dialog = function(ev,idSubActivities){
		    
		    //$scope.Target = {}
			
			$scope.idSubActivities = idSubActivities;

			//alert(idMainActivities);


			$mdDialog.show({
	        contentElement: '#' + 'input_indicator_dialog',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};


		$scope.show_indic_accomp_chart = function(ev){


			$scope.compute_Graph_Data();

				$mdDialog.show({
	        contentElement: '#' + 'indic_accomp_chart',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });




  // $scope.labels = ['2006', '2007', '2008', '2009', '2010', '2011', '2012'];
  // $scope.series = ['Series A', 'Series B'];

  // $scope.data = [
  //   [65, 59, 80, 81, 56, 55, 40],
  //   [28, 48, 40, 19, 86, 27, 90]
  // ];


		};

		$scope.show_decline_remarks_dialog= function(ev,accomp_id){


			$scope.declined_MOV = accomp_id;
			// $scope.compute_indicator_Graph_Data();

				$mdDialog.show({
	        contentElement: '#' + 'decline_remarks',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};

		


		$scope.get_Accomplishment_Submissions = ()=>{
			
			$http.post('././pages/viewData/model/get_Accomplishment_Submissions.php').then(function(data){

        		$scope.Accomplishment_Submission_data = data.data;
        		console.log(data.data);

			});
		}//END OF get_Accomplishment_Submissions

		$scope.notifications_id;
		$scope.get_Accomplishment_Submissions_MIS = (ev,record_id,notifications_id)=>{
			
			$scope.notifications_id = notifications_id;
			
			$http.post('././pages/viewData/model/get_Accomplishment_Submissions_MIS.php',{"accomp_id" : record_id}).then(function(data){
// , "notifications_id": notifications_id
        		$scope.Accomplishment_Submission_MIS = data.data;
        		console.log(data.data);
        		$mdDialog.show({
			        contentElement: '#' + 'indic_accomp_MIS',
			        parent: angular.element(document.body),
			        targetEvent: ev,
			        fullscreen: true,
			        multiple: true,
			        clickOutsideToClose: true,
			        disableParentScroll : false
			      });


			});

			$scope.set_QR_value(record_id,"Submission_QR");
			
		}//get_Accomplishment_Submissions_MIS

		$scope.show_indicator_bar_chart= function(ev){


			// $scope.compute_Graph_Data();
			// $scope.compute_indicator_Graph_Data();

				$mdDialog.show({
	        contentElement: '#' + 'indicator_bar_chart',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        multiple: true,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};


		$scope.show_accomp_chart_monthly = function(ev){
			
			//$scope.compute_Graph_Data_Monthly();

			$mdDialog.show({
	        contentElement: '#' + 'monthly_accomp_chart',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });


		}

//////////////////////////////////END OF DIALOGS

///MOV
$scope.accept_MOV = (ev,accomp_id) =>{

 // alert($scope.notifications_id);
	  var fd = new FormData();

	  fd.append('accomp_id',accomp_id);
	  fd.append('notifications_id',$scope.notifications_id);
	  
	
	  // AJAX request
	  $http({
	   method: 'post',
	   url: '././pages/viewData/model/update_MOV_Status.php',
	   data: fd,
	   headers: {'Content-Type': undefined},
	  }).then(function successCallback(response) { 
	    if(response.data.message == "Success"){
				Swal.fire(
					'Updated!',
					response,
					'success'
					)

$scope.view_indicator_accomplishments_refresh(ev,$scope.curr_Selected_idindicators,$scope.curr_Selected_indic_data)

			}

			else{
				Swal.fire({
					type: 'error',
					title: 'Oops...',
					text: 'Something went wrong!',
					})
			}
	  });


}
$scope.decline_MOV = (declined_MOV,remarks,ev) =>{

			 var fd = new FormData();

			  fd.append('accomp_id',declined_MOV);
			  fd.append('remarks',remarks);
			  fd.append('notifications_id',$scope.notifications_id);
			
			  // AJAX request
			  $http({
			   method: 'post',
			   url: '././pages/viewData/model/decline_MOV.php',
			   data: fd,
			   headers: {'Content-Type': undefined},
			  }).then(function successCallback(response) { 
			    if(response.data.message  == "Success"){
						Swal.fire(
							'Saved!',
							response,
							'success'
							)
						$scope.view_indicator_accomplishments_refresh(ev,$scope.curr_Selected_idindicators,$scope.curr_Selected_indic_data)

			
					}

					else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
			  });

		};
/// end of MOV

//////////////////////////////////Compute Graph Data/////////////////////////
$scope.compute_indicator_Graph_Data = function(){

		$http.post('././pages/viewData/model/get_Chart_data.php').then(function(data){
				
				$scope.chart_data = data.data;

				//$scope.loggedIn = data.data;
        		console.log($scope.chart_data);


        		//////////////////////////////////////angular chart///////////////////////////////////////////


				    var json_data_s = JSON.stringify($scope.chart_data)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    //console.log(json_data_s);

					var arr = []
					var yr_labels = []
					var values_arr = []


					////////////////////////////////////////////////////////////////////////////////////////////

						//get values to array
						try {
						  yr_labels = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.year], [])
						} catch (e){
						  console.log("Invalid json")
						}


						try {
						  values_arr = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Target], [])
						} catch (e){
						  console.log("Invalid json")
						}

						try {
						  values_arr1 = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Accomplished], [])
						} catch (e){
						  console.log("Invalid json")
						}

					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = yr_labels;
					$scope.series = ["Target", "Accomplished"];
					// console.log(series);
					console.log(json_data_s)

					var myDATA = [];

					//  values_arr = [1435.56, 10626]
					// values_arr1 = 	[99.96, 71]

					//  two1dto2d(myDATA, values_arr, values_arr1);

					//  function two1dto2d(c, a, b) {
					//  for (var i = 0; i < a.length; i++) {
					//     c.push([a[i], b[i]]);
					//   }
					// }

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;


					     $scope.data = $scope.myDATA;

					     //alert($scope.myDATA)
					  console.log($scope.myDATA)


				//////////////////////////////////////end of angular chart///////////////////////////////////////////

				});
			
};


//////////////////////////////////Compute Graph Data/////////////////////////
$scope.compute_Graph_Data = function(){

		$http.post('././pages/viewData/model/get_Chart_data.php').then(function(data){
				
				$scope.chart_data = data.data;

				//$scope.loggedIn = data.data;
        		console.log($scope.chart_data);


        		//////////////////////////////////////angular chart///////////////////////////////////////////


				    var json_data_s = JSON.stringify($scope.chart_data)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    //console.log(json_data_s);

					var arr = []
					var yr_labels = []
					var values_arr = []


					////////////////////////////////////////////////////////////////////////////////////////////

						//get values to array
						try {
						  yr_labels = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.year], [])
						} catch (e){
						  console.log("Invalid json")
						}


						try {
						  values_arr = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Target], [])
						} catch (e){
						  console.log("Invalid json")
						}

						try {
						  values_arr1 = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Accomplished], [])
						} catch (e){
						  console.log("Invalid json")
						}

					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = yr_labels;
					$scope.series = ["Target", "Accomplished"];
					// console.log(series);
					console.log(json_data_s)

					var myDATA = [];

					//  values_arr = [1435.56, 10626]
					// values_arr1 = 	[99.96, 71]

					//  two1dto2d(myDATA, values_arr, values_arr1);

					//  function two1dto2d(c, a, b) {
					//  for (var i = 0; i < a.length; i++) {
					//     c.push([a[i], b[i]]);
					//   }
					// }

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;


					     $scope.data = $scope.myDATA;

					     //alert($scope.myDATA)
					  console.log($scope.myDATA)


				//////////////////////////////////////end of angular chart///////////////////////////////////////////

				});
			
};



$scope.compute_Graph_Data_Monthly = function(){

		$http.post('././pages/viewData/model/get_Monthly_Report.php').then(function(data){
				
				$scope.chart_data = data.data;

				//$scope.loggedIn = data.data;
        		console.log($scope.chart_data);


        		//////////////////////////////////////angular chart line///////////////////////////////////////////


				    var json_data_s = JSON.stringify($scope.chart_data)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    //console.log(json_data_s);

					var arr = []
					var yr_labels = []
					var values_arr = []


					////////////////////////////////////////////////////////////////////////////////////////////

						//get values to array
						try {
						  yr_labels = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.year], [])
						} catch (e){
						  console.log("Invalid json")
						}


						try {
						  values_arr = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Target], [])
						} catch (e){
						  console.log("Invalid json")
						}

						try {
						  values_arr1 = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Accomplished], [])
						} catch (e){
						  console.log("Invalid json")
						}

					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = yr_labels;
					$scope.series = ["Target", "Accomplished"];
					// console.log(series);
					console.log(json_data_s)

					var myDATA = [];

					//  values_arr = [1435.56, 10626]
					// values_arr1 = 	[99.96, 71]

					//  two1dto2d(myDATA, values_arr, values_arr1);

					//  function two1dto2d(c, a, b) {
					//  for (var i = 0; i < a.length; i++) {
					//     c.push([a[i], b[i]]);
					//   }
					// }

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;


					     $scope.data = $scope.myDATA;

					     //alert($scope.myDATA)
					  console.log($scope.myDATA)


				//////////////////////////////////////end of angular chart///////////////////////////////////////////

				});
			
};
//////////////////////////////////End Compute Graph Data/////////////////////////
        
        $scope.update_indicator = (indicator, Target, Deadlines, Budget, Selected_Year,idSubActivities) =>{
		    
// 		    Start_Date = $filter('date')(Start_Date, 'yyyy-MM-dd');
// 			End_Date = $filter('date')(End_Date, 'yyyy-MM-dd');

           // alert(Target)

// 			var fd = new FormData();

// 			fd.append("indicator",indicator);
// 			fd.append("Target",Target);
			
// 			console.log(fd)

// // 			var request = $http({
// // 				method: 'POST',
// // 				url:'././pages/input_Activities/model/update_indicator.php',
// // 				data: fd,
// // 				transformrequest : angular.identity,
// // 				headers: {
// // 					'Content-Type' : undefined
// //         		}
// //         	});

            var Commitment = '';

			if(indicator.DBM == true){
				Commitment = Commitment + "DBM,"
			}
			if(indicator.PBB == true){
				Commitment = Commitment + "PBB,"
			}
			if(indicator.DENR == true){
				Commitment = Commitment + "DENR,"
			}
			if(indicator.OPCR == true){
				Commitment = Commitment + "OPCR,"
			}
			if(indicator.IPCR == true){
				Commitment = Commitment + "IPCR,"
			}

			Commitment = Commitment.slice(0, -1)


			
			$http.post('././pages/input_Activities/model/update_indicator.php',
				{"Title":indicator.Title,
				"TargetWeight":indicator.TargetWeight,
				"AnnualTarget":indicator.AnnualTarget,
				"idsubactivities":idSubActivities,
				"year_indicator":Selected_Year,
				"Target":Target, 
				"Deadlines":Deadlines, 
				"Budget":Budget ,
				"Division":indicator.division,
				"Commitment":Commitment,
				"budget":indicator.budget,
				"idindicators":indicator.idindicators    
				}).then(function(response){

				if(response.data.message == "Add Successful."){
					Swal.fire(
						'Updated!',
						'Record Updated',
						'success'
					  )
					  
					  location.reload();

				$mdDialog.hide();
				}

				else{
					Swal.fire({
						type: 'error',
						title: 'Oops...',
						text: 'Something went wrong!',
						})
					}

				
				$scope.initialize_indicator(); 
				});
        		    
		    
		    
		};//$scope.update_indicator

		$scope.save_indicator = function(indicator, Target, Deadlines, Budget, Selected_Year,idSubActivities){

			var Commitment = '';

			if(indicator.DBM == true){
				Commitment = Commitment + "DBM,"
			}
			if(indicator.PBB == true){
				Commitment = Commitment + "PBB,"
			}
			if(indicator.DENR == true){
				Commitment = Commitment + "DENR,"
			}
			if(indicator.OPCR == true){
				Commitment = Commitment + "OPCR,"
			}
			if(indicator.IPCR == true){
				Commitment = Commitment + "IPCR,"
			}

			Commitment = Commitment.slice(0, -1)


			
			$http.post('././pages/input_Activities/model/save_indicator.php',
				{"Title":indicator.Title,
				"TargetWeight":indicator.Weight,
				"AnnualTarget":indicator.Target,
				"idsubactivities":idSubActivities,
				"year_indicator":Selected_Year,
				"Target":Target, 
				"Deadlines":Deadlines, 
				"Budget":Budget ,
				"Division":indicator.division,
				"Commitment":Commitment,
				"budget":indicator.budget}).then(function(response){

				if(response.data.message == "Add Successful."){
					Swal.fire(
						'Saved!',
						'New Record Added',
						'success'
					  )
					  $scope.initialize_indicator(); 
					  location.reload();

				$mdDialog.hide();
				}

				else{
					Swal.fire({
						type: 'error',
						title: 'Oops...',
						text: 'Something went wrong!',
						})
					}

				
				
				});
				
				
				};

		$scope.save_sub_activity = function(Title, Coding,Selected_Activity_ID){
			$http.post('././pages/input_Activities/model/save_sub_activity.php',{"Title":Title,"Coding":Coding,"Selected_Activity_ID":Selected_Activity_ID}).then(function(response){
				//console.log(data);
				if(response.data.message == "Success"){
					Swal.fire(
						'Saved!',
						'New Record Added',
						'success'
					  )

				$mdDialog.hide();
				}

				else{
					Swal.fire({
						type: 'error',
						title: 'Oops...',
						text: 'Something went wrong!',
						})
					}
				});
				};



		$scope.save_Accomplishment = function(Selected_Activity_ID,Quantity,Accom_Date,Remarks){

			var file_name = document.getElementById("uploadfile").files[0].name;
			// console.log(file_name);

			$http.post('././pages/inputAccomp/model/save_Accomplishment.php',
				{"Selected_Activity_ID":Selected_Activity_ID,"Quantity":Quantity,
				"Accom_Date":Accom_Date,"Remarks":Remarks,"File_Name":file_name}).then(function(data){
				
				if(data.data.message != ""){
						console.log(data.data.message)
						$scope.upload(data.data.message);



				Swal.fire(
					      'Successful',
					      'Accomplishment Saved.',
					      'success'
					    )
			
					}

					else{
						Swal.fire({
							type: 'error',
							title: 'Oops...',
							text: 'Something went wrong!',
							})
					}
				////get LAST ID from saved accomplishment

				////call UPLOAD function
				///// use LAST ID for FileName Creation 

				////in RETRIEVAL

				
				
			

		});
			


		};


		$scope.upload = function(last_id){

        // alert(last_id);
        var id = last_id;


		  var fd = new FormData();
		  var files = document.getElementById("uploadfile").files[0];
		  // var personName = document.getElementById('last').value;
		  //var id = 6;
		  fd.append('file',files);
		  fd.append('meta',id);

		   // console.log(document.getElementById("file").files[0].file.name);

		  // AJAX request
		  $http({
		   method: 'post',
		   url: '././pages/inputAccomp/model/upload_mov.php',
		   data: fd,
		   headers: {'Content-Type': undefined},
		  }).then(function successCallback(response) { 
		    // Store response data
		    $scope.response = response.data;
		  });
		 };




		$scope.hideDialog =function(ev,ID)  {

    	console.log(ID);

    	$mdDialog.hide({
        contentElement: '#' + ID,
        parent: angular.element(document.body),
        targetEvent: ev,
        fullscreen: false,
        clickOutsideToClose: true
      });
    };

    	//$scope.Current_Year = 0;
    	

    	$scope.get_Current_Year = function(){

    		var d = new Date();
			var n = d.getFullYear();
			//$scope.Current_Year = n;
			$scope.Selected_Year = n;
			//alert($scope.Current_Year);
    	}



		// $scope.get_Indicators = function(){



		// 		$http.post('././pages/inputAccomp/model/get_Indicators.php').then(function(data){
				
				
		// 		$scope.indicator_data = data.data;

		// 		//$scope.loggedIn = data.data;
  //       		console.log($scope.indicator_data);

		// });


		// }

		$scope.get_Indicators_Year = function(Selected_Year){
				// $http.post('././pages/inputAccomp/model/get_Indicators.php',{"Selected_Year":Selected_Year}).then(function(data){
				$http.post('././pages/inputAccomp/model/get_Indicators_Division.php',{"Selected_Year":Selected_Year}).then(function(data){
				    
				$scope.indicator_data = data.data;
				
				// if ($scope.indicator_data.length) {

    //                 var heighest = $scope.indicator_data[0];
    //                 for (var i = 1; i < $scope.indicator_data.length; i++) {
    //                     $scope.indicator_data[i].jan_budget = parseInt($scope.indicator_data[i].jan_budget);
                        
    //                 }
                
              
    //             }
				
				
				//$scope.indicator_data = data.data;

				//$scope.loggedIn = data.data;
        		//console.log($scope.indicator_data);

		});


		}
		
		

		$scope.get_declined_indicator_data = (Selected_Year) =>{

			$http.post('././pages/inputAccomp/model/get_Indicators_declined.php',{"Selected_Year":Selected_Year}).then(function(data){
				
				
				$scope.declined_indicator_data = data.data;

				//$scope.loggedIn = data.data;
        		console.log($scope.declined_indicator_data);

		});


		};

		$scope.firstDay = '';
		$scope.lastDay = '';
		$scope.yr = '';

/////////////////////////////////////////REPORT/////////////////////////////////////////////////////////////////////////////////
		$scope.get_accomp_Report = function(month_from,month_to,yr){
			// alert(month_from);
			month_from = month_from - 1;
			var date = new Date(yr,month_from);
			
			$scope.firstDay = new Date(yr, month_from, 1);
			$scope.lastDay = new Date(yr, month_to, 0);
			$scope.yr = yr;
			

			$http.post('././pages/viewData/model/get_Accomp_Report.php',{"firstDay":$scope.firstDay, "lastDay":$scope.lastDay, "Selected_Year":yr}).then(function(data){
				$scope.accomp_Report = data.data;
				//$scope.loggedIn = data.data;
        		console.log($scope.accomp_Report);

			});

			$scope.get_Monthly_report(yr);
		};

		$scope.get_Monthly_report = function(yr){

			$http.post('././pages/viewData/model/get_Monthly_Report.php',{"Selected_Year":yr}).then(function(data){
				$scope.monthly_Report = data.data;
				//$scope.loggedIn = data.data;
        		console.log($scope.monthly_Report);


        		//////////////////////////////////////angular chart///////////////////////////////////////////


				    var json_data_s = JSON.stringify($scope.monthly_Report)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    //console.log(json_data_s);

					var arr = []
					var yr_labels = []
					var values_arr = []


					////////////////////////////////////////////////////////////////////////////////////////////

						//get values to array
						try {
						  yr_labels = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.month], [])
						} catch (e){
						  console.log("Invalid json")
						}


						try {
						  values_arr = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Target], [])
						} catch (e){
						  console.log("Invalid json")
						}

						try {
						  values_arr1 = JSON.parse(json_data_s).reduce((acc, val)=>[...acc, val.Accomplished], [])
						} catch (e){
						  console.log("Invalid json")
						}

					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = yr_labels;
					$scope.series = ["Target", "Accomplished"];
					// console.log(series);
					console.log(json_data_s)

					var myDATA = [];

					//  values_arr = [1435.56, 10626]
					// values_arr1 = 	[99.96, 71]

					//  two1dto2d(myDATA, values_arr, values_arr1);

					//  function two1dto2d(c, a, b) {
					//  for (var i = 0; i < a.length; i++) {
					//     c.push([a[i], b[i]]);
					//   }
					// }

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;


					     $scope.data = $scope.myDATA;

					     //alert($scope.myDATA)
					  console.log($scope.myDATA)


				//////////////////////////////////////end of angular chart///////////////////////////////////////////



			});

		};


		$scope.get_accomp_Report_yearly = function(year_start,year_end){
					
			 $scope.firstDay = new Date(year_start, 0, 1);
			 $scope.lastDay = new Date(year_end, 11, 31);
			
			$http.post('././pages/viewData/model/api_get_Accomp_Report_yearly.php',{"year_start":year_start, "year_end":year_end}).then(function(data){
				$scope.accomp_Report = data.data;
				//$scope.loggedIn = data.data;
        		console.log($scope.accomp_Report);

			});
		};
		 
		$scope.get_expenses_yearly = (ev,year_start,year_end) =>{
			var fd = new FormData();

			fd.append("year_start",year_start);
			fd.append("year_end",year_end);


			var request = $http({
				method: 'POST',
				url:'././pages/viewData/model/expenses/annual_expenses.php',
				data: fd,
				transformrequest : angular.identity,
				headers: {
					'Content-Type' : undefined
				}
			});

			request.then(function(data){
				$scope.expenses_data = data.data;
				//alert('get_Admin_list');
				console.log(data.data);
		});

			$mdDialog.show({
        contentElement: '#' + 'expense_sub',
        parent: angular.element(document.body),
        targetEvent: ev,
        fullscreen: true,
        multiple: true,
        clickOutsideToClose: true,
        disableParentScroll : false
      });

		};


		$scope.get_expenses_monthly = (ev,month_from,month_to,yr) =>{
			var fd = new FormData();

			month_from = month_from - 1;
			var date = new Date(yr,month_from);
			
			$scope.firstDay = new Date(yr, month_from, 1);
			$scope.lastDay = new Date(yr, month_to, 0);
			$scope.yr = yr;

			$scope.firstDay = $scope.to_date($scope.firstDay);
			$scope.lastDay = $scope.to_date($scope.lastDay);

			// $scope.firstDay = new Date(yr, month_from, 1);
			// $scope.lastDay = new Date(yr, month_to, 0);

			fd.append("firstDay",$scope.firstDay);
			fd.append("lastDay",$scope.lastDay);


			var request = $http({
				method: 'POST',
				url:'././pages/viewData/model/expenses/monthly_expenses.php',
				data: fd,
				transformrequest : angular.identity,
				headers: {
					'Content-Type' : undefined
				}
			});

			request.then(function(data){
				$scope.expenses_data = data.data;
				//alert('get_Admin_list');
				console.log(data.data);
		});

			$mdDialog.show({
        contentElement: '#' + 'expense_sub',
        parent: angular.element(document.body),
        targetEvent: ev,
        fullscreen: true,
        multiple: true,
        clickOutsideToClose: true,
        disableParentScroll : false
      });

		};

		$scope.get_accomp_Report_quarter = (year_selected,quarter_selected) =>{
			var month_from= 0;
			var month_to = 0;

			switch(quarter_selected){
				case '1':
					month_from= 1;
					month_to = 3;
				break;

				case '2':
					month_from= 4;
					month_to = 6;
				break;

				case '3':
					month_from= 7;
					month_to = 9;
				break;

				case '4':
				month_from= 10;
				month_to = 12;
				break;

			}

			// alert(month_from + ' ' + month_to)

			$scope.get_accomp_Report(month_from,month_to,year_selected)


		};
		$scope.get_expenses_quarter = (ev,year_selected,quarter_selected) =>{
			var month_from= 0;
			var month_to = 0;

			switch(quarter_selected){
				case '1':
					month_from= 1;
					month_to = 3;
				break;

				case '2':
					month_from= 4;
					month_to = 6;
				break;

				case '3':
					month_from= 7;
					month_to = 9;
				break;

				case '4':
				month_from= 10;
				month_to = 12;
				break;

			}

			// alert(month_from + ' ' + month_to)

			// $scope.get_accomp_Report(month_from,month_to,year_selected)
			$scope.get_expenses_monthly(ev,month_from,month_to,year_selected);


		};
		

		$scope.view_indicator_accomplishments = function(ev,idindicators,indic_data){

			$scope.curr_Selected_idindicators = idindicators;
			$scope.curr_Selected_indic_data = indic_data;

			// console.log($scope.firstDay)
			//alert(idindicators);
			$http.post('././pages/viewData/model/get_indic_accomp.php',{"idindicators":idindicators,"firstDay":$scope.firstDay, "lastDay":$scope.lastDay, "Selected_Year":$scope.yr}).then(function(data){
				$scope.accomp_indic = data.data;
				//$scope.loggedIn = data.data;
        		console.log($scope.accomp_indic);

			});


console.log(indic_data.Target);
			
///////////////////////////////////GRAPH DATA////////////////////////////////////////////
var json_data_s = JSON.stringify(indic_data)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    console.log(indic_data);

$scope.Indicator_Title = indic_data.Indicator;
$scope.chart_Target = indic_data.Target;
$scope.chart_Accomplished = indic_data.Accomplished;

					var arr = []
					var yr_labels = []
					var values_arr = []
					var values_arr1 = []

					values_arr[0] = indic_data.Target;
					values_arr1[0] = indic_data.Accomplished;

					values_arr[1] = "0";
					values_arr1[1] = "0";

					var myDATA = [];

					//myDATA.push(0, 0);

					// myDATA[0] = values_arr[0];
					// myDATA[1] =	values_arr1[0]
					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = ["2021","Jan"];
					$scope.series = ["Target", "Accomplished"];
					

				// [[0,1],[0,3]]

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;
					     console.log(myDATA)

					     $scope.data = $scope.myDATA;
					     // $scope.data = [["0","1"],["0","3"]];
					     console.log($scope.data)
/////////////////////////////////////////////////////////////////////////////////////////			

			$mdDialog.show({
        contentElement: '#' + 'indic_accomp',
        parent: angular.element(document.body),
        targetEvent: ev,
        fullscreen: true,
        multiple: true,
        clickOutsideToClose: true,
        disableParentScroll : false
      });


		};


$scope.view_indicator_accomplishments_refresh = function(ev,idindicators,indic_data){

			$scope.curr_Selected_idindicators = idindicators;
			$scope.curr_Selected_indic_data = indic_data;

			// console.log($scope.firstDay)
			//alert(idindicators);
			$http.post('././pages/viewData/model/get_indic_accomp.php',{"idindicators":idindicators,"firstDay":$scope.firstDay, "lastDay":$scope.lastDay, "Selected_Year":$scope.yr}).then(function(data){
				$scope.accomp_indic = data.data;
				//$scope.loggedIn = data.data;
        		console.log($scope.accomp_indic);

			});


//console.log(indic_data.Target);
			
///////////////////////////////////GRAPH DATA////////////////////////////////////////////
var json_data_s = JSON.stringify(indic_data)//`[{"role":"noi_user"},{"role":"bert_user"}]`
				    //console.log(json_data_s);

					var arr = []
					var yr_labels = []
					var values_arr = []
					var values_arr1 = []

					values_arr[0] = indic_data.Target;
					values_arr1[0] = indic_data.Accomplished;

					var myDATA = [];

					// myDATA[0] = values_arr[0];
					// myDATA[1] =	values_arr1[0]
					////////////////////////////////////////////////////////////////////////////////////////////

					$scope.labels = [indic_data.Indicator];
					$scope.series = ["Target", "Accomplished"];
					// console.log(series);

				

					myDATA.push(values_arr, values_arr1);
				
						//$scope.myDATA = c;
					     $scope.myDATA = myDATA;
					     console.log(myDATA)

					     $scope.data = $scope.myDATA;




		};

	

/////////////////////////////////////////end of REPORT//////////////////////////////////////////////////////////////////////////




//////////////////////////////////////IPCR///////////////////
$scope.save_output=(data)=>{
	var fd = new FormData();


	//alert(data.ipcr_outputs_year);
	fd.append('ipcr_outputs_activity_title', data.ipcr_outputs_activity_title);
	fd.append('ipcr_outputs_year', data.yr);
	

	var request = $http({
		method: 'POST',
		url:'./pages/IPCR/model/save_output.php',
		data: fd,
		transformrequest : angular.identity,
		headers: {
			'Content-Type' : undefined
		}
	});
	
		//resolution swal
		// 
	request.then(function(response){

		if(response.data == "Data Added"){
			Swal.fire(
				'Saved!',
				'New Record Added',
				'success'
			  )

		$mdDialog.hide();
		}

		else{
			Swal.fire({
				type: 'error',
				title: 'Oops...',
				text: 'Something went wrong!',
				})
			}
				
			$scope.get_Cor();

		})


	};//end of save_output



	$scope.get_outputs = (Selected_Year) =>{

	var fd = new FormData();

	fd.append("yr",Selected_Year);

	var request = $http({
		method: 'POST',
		url:'./pages/IPCR/model/get_outputs.php',
		data: fd,
		transformrequest : angular.identity,
		headers: {
			'Content-Type' : undefined
		}
	});

	request.then(function(data){
		$scope.output_list = data.data;
		//alert('get_Admin_list');
		console.log(data);
});
}

$scope.show_IPCR_input_indicator_dialog = function(ev,idSubActivities,data){
			
			$scope.idSubActivities = idSubActivities;
			$scope.Selected_Activity_Title = data.ipcr_outputs_activity_title;

			//alert(idSubActivities);


			$mdDialog.show({
	        contentElement: '#' + 'create_indicator',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};

$scope.save_new_Indicator =(data)=>{

var fd = new FormData();

				
		fd.append('ipcr_AnnualTarget', data.ipcr_AnnualTarget);
		fd.append('ipcr_first_sem_target', data.ipcr_first_sem_target);
		fd.append('ipcr_first_sem_target_no', data.ipcr_first_sem_target_no);
		fd.append('ipcr_second_sem_target', data.ipcr_second_sem_target);
		fd.append('ipcr_second_sem_target_no', data.ipcr_second_sem_target_no);

		fd.append('ipcr_output_id', data.idSubActivities)



		var request = $http({
			method: 'POST',
			url:'./pages/IPCR/model/save_new_Indicator.php',
			data: fd,
			transformrequest : angular.identity,
			headers: {
				'Content-Type' : undefined
			}
		});
		

		request.then(function(data){

			if(data.data == "Data Added"){
				Swal.fire(
					'Saved!',
					'success'
				  )

				// $scope.get_Criminal_list();
			}

			else{
				Swal.fire({
					type: 'error',
					title: 'Oops...',
					text: 'Something went wrong!',
				  })
			}

			
			console.log(data.data);
		})
};


$scope.get_IPCR_indicators = (Selected_Year)=>{
//alert(Selected_Year)
var fd = new FormData();

	fd.append("Selected_Year",Selected_Year);

	var request = $http({
		method: 'POST',
		url:'./pages/IPCR/model/get_indicators.php',
		data: fd,
		transformrequest : angular.identity,
		headers: {
			'Content-Type' : undefined
		}
	});

	request.then(function(data){
		$scope.indicator_list = data.data;
		//alert('get_Admin_list');
		console.log(data);
});


};

$scope.show_input_indicator_accomp_dialog = function(ev,data){
			
			$scope.id_Indicator = data.ipcr_indicators_id;
			$scope.Selected_Activity_Title = data.ipcr_outputs_activity_title;

			//alert(idSubActivities);


			$mdDialog.show({
	        contentElement: '#' + 'input_indicator_accomp',
	        parent: angular.element(document.body),
	        targetEvent: ev,
	        fullscreen: true,
	        clickOutsideToClose: true,
	        disableParentScroll: false
	      });

		};

$scope.save_accomp_Indicator = (data) =>{

	var fd = new FormData();


	var date_accomp = $scope.to_date(data.Accom_Date);

				
		fd.append('ipcr_indicators_id', data.id_Indicator);
		fd.append('ipcr_actual_accomplished', data.ipcr_Accomplished);
		fd.append('ipcr_actual_date_completed', date_accomp);
		fd.append('ipcr_actual_remarks', data.Remarks);




		var request = $http({
			method: 'POST',
			url:'./pages/IPCR/model/save_Accomp_Indicator.php',
			data: fd,
			transformrequest : angular.identity,
			headers: {
				'Content-Type' : undefined
			}
		});
		

		request.then(function(data){

			if(data.data == "Data Added"){
				Swal.fire(
					'Saved!',
					'success'
				  )

				$scope.get_Criminal_list();
			}

			else{
				Swal.fire({
					type: 'error',
					title: 'Oops...',
					text: 'Something went wrong!',
				  })
			}

			
			console.log(data.data);
		})


};

$scope.get_IPCR_summary = (Selected_Year)=>{
//alert(Selected_Year)
var fd = new FormData();

	fd.append("Selected_Year",Selected_Year);

	var request = $http({
		method: 'POST',
		url:'./pages/IPCR/model/get_IPCR_summary.php',
		data: fd,
		transformrequest : angular.identity,
		headers: {
			'Content-Type' : undefined
		}
	});

	request.then(function(data){
		$scope.indicator_list = data.data;
		//alert('get_Admin_list');
		console.log(data);
});


};



//////////////////////////////////////End of IPCR///////////////////////


  //       $scope.set_User_Name = function(){

  //       	$http.post('././PhaseI/dashboard/model/set_User_Name.php').then(function(data){
				
				
		// 		$scope.user_name = data.data;

		// 		//$scope.loggedIn = data.data;
  //       console.log($scope.user_level);

		// });


  //       }

        // $scope.indicator.division;

  //       $scope.set_User_Level = function(user_lvl,user_division,user_id){

  //       	$http.post('././pages/login/model/set_User_Level.php',{
  //       		"user_lvl" : user_lvl,
  //       		"user_division" : user_division,
  //       		"user_id" : user_id
  //       	}).then(function(data){
				
				
		// 		$scope.user_level = data.data;



		// 		if($scope.user_level == 'MIS'){
		// 				$scope.current_Page = 'pages/viewData/views/Main.html';
		// 				// $scope.current_Page	= 'pages/input_Activities/views/main.html';
		// 				$scope.mis_dashboard = true;

		// 		}else{

		// 			$scope.current_Page = 'pages/inputAccomp/views/Main.html';
		// 			$scope.mis_dashboard = false;
					
		// 			// alert($scope.indicator.division)
		// 		}

				

		// 		 // $scope.current_Page = 'PhaseI/dashboard/views/'+ $scope.user_level +'.html'

		// 		//$scope.loggedIn = data.data;
  //       // alert($scope.user_level);

		// });
  //       }

  		// $scope.qrValue = 'Julius BBC';

  		$scope.set_QR_value = (qr_val,qr_Element)=>{
  			var qrcode = new QRCode(document.getElementById(qr_Element), {
			  width : 100,
			  height : 100
			});
  			// alert(qr_val)
			function makeCode () {    
			   //var elText = document.getElementById("text");
			  //var elText = qr_val;
			  
			  // if (!elText.value) {
			  //   alert("Input a text");
			  //   elText.focus();
			  //   return;
			  // }
			  
			  //qrcode.makeCode(elText.value);
			  qrcode.makeCode(qr_val);
			}

			makeCode();

  		}

  		$scope.clear_qr = () =>{
  			// alert('mawala ka')
  			location.reload()
  			//document.getElementById("qrcode").reset();
  		}

        $scope.loggedin = function(){
			$http.post('././pages/login/model/loggedin.php').then(function(data){
						var logged_In = data.data.message;

						if(logged_In === 'success'){
								$scope.loggedIn = true;
								if(data.data.user_level == 'MIS'){
									$scope.current_Page = 'pages/viewData/views/Main.html';
									// $scope.current_Page	= 'pages/input_Activities/views/main.html';
									$scope.mis_dashboard = true;

								}else{

									$scope.current_Page = 'pages/inputAccomp/views/Main.html';
									$scope.mis_dashboard = false;
									
									// alert($scope.indicator.division)
								}
							}else{$scope.loggedIn = false;}

		});
        	

        };


        $scope.logOut =function(){

        	Swal.fire({
					  title: 'Are you sure?',
					  text: "This will log you out.",
					  type: 'warning',
					  showCancelButton: true,
					  confirmButtonColor: '#85C1E9',
					  cancelButtonColor: '#F1948A',
					  confirmButtonText: 'Yes, log me out.'
					}).then((result) => {
					  if (result.value) {
					  	// $http.post('http://192.168.0.111/rest-api-authentication/api/logout.php')
					  	$http.post('https://pcsd.gov.ph/rest-api-authentication/api/logout.php').then(function(data){
					  		// ././pages/login/model/logout.php
												location.reload();
										});
					    Swal.fire(
					      'Logged Out!',
					      'Logout Successful.',
					      'success'
					    )

					  }
					})
			


        }


		$scope.report = '';
		$scope.helpers=[];
		$scope.newHelper={edit:false,Name:''};
		$scope.charges=[];
		$scope.Overtimes = '';
		$scope.Hires = '';
		$scope.ChargesReport = '';
		$scope.HolidaysReport = '';
		$scope.NSDReport = '';
		$scope.DayoffReport = '';
		$scope.ContributionsReport ='';
		$scope.RouteRatesReport = '';
		$scope.PersonnelReport='';
		$scope.inputhide =true;
		$scope.outputhide =false;
		$scope.dayoffdaychecked = false;
		$scope.generated =true;
		$scope.reportdatestart = '';
		$scope.reportdateend = '';


		$scope.UnitList='';


		$scope.sortByText= '-remittanceDate';


		$scope.selectDate={};

		$scope.cashadvances={};


		$scope.driverInfo=[];
		$scope.pageRequired="views/InputCashAdvances.html";
		$scope.VehicleTypeVanLabel = "Conductor";

		var date = new Date();
		var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
		var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);

	

		


	

	  $scope.Positions = [

	    { id: 1, name: 'Driver' },
	    { id: 2, name: 'Helper' },
	    { id: 3, name: 'Conductor' }
	  ];


	  $scope.Years = [
	    { id: 1, name: '2019' },

	    { id: 2, name: '2018' },
	  ];

	  


	  $scope.vehicleTable = new NgTableParams({}, { dataset: $scope.Vehicles});
	  $scope.personnelTable = new NgTableParams({}, { dataset: $scope.Personnel});


		
		
		$scope.driverID ="";
		$scope.status = '  ';
		$scope.contentBox = "";
		$scope.GrossTotal ="";
		Holidays=[];

		$scope.currentYR = new Date().getFullYear();





		$scope.openSidebarLeft = function() {
			$mdSidenav('left')
			   .open()
			   .then(function(){
			     $log.debug('opened');
			   });
		}
		$scope.openSidebarRight = function() {
			$mdSidenav('right')
			   .open()
			   .then(function(){
			     $log.debug('opened');
			   });
		}

		$scope.closeSidebarLeft = function() {
			$mdSidenav('left')
			   .close()
			   .then(function(){
			     $log.debug('closed');
			   });
		}
		$scope.closeSidebarRight = function() {
			$mdSidenav('right')
			   .close()
			   .then(function(){
			     $log.debug('closed');
			   });
		}

		$scope.getPage = function(pageName){

 				
			$scope.pageRequired=pageName;
			console.log($scope.pageRequired);

		}

		$scope.setReport = function(info){



			if (info == 'Units'){

				$http.post('./PhaseI/units/model/listUnitDetails.php',{"startDate":info.startDate,"endDate":info.endDate}).then(function(data){
				$scope.UnitList = data.data;
				console.log(data);
				});



			}

		}

		
	

		$scope.showPrompt = function(ev) {
    // Appending dialog to document.body to cover sidenav in docs app
    	var confirm = $mdDialog.prompt()
      .title('What would you name your dog?')
      .textContent('Bowser is a common name.')
      .placeholder('Dog name')
      .ariaLabel('Dog name')
      .initialValue('Buddy')
      .targetEvent(ev)
      .required(true)
      .ok('Okay!')
      .cancel('I\'m a cat person');

    $mdDialog.show(confirm).then(function(result) {
      $scope.status = 'You decided to name your dog ' + result + '.';
    }, function() {
      $scope.status = 'You didn\'t name your dog.';
    });
  };

   $scope.showConfirm = function(ev,delid,db) {
    // Appending dialog to document.body to cover sidenav in docs app
    var confirm = $mdDialog.confirm()
          .title('Would you like to DELETE the selected record?')
          .textContent('This will PERMANENTLY delete it.')
          .ariaLabel('CAUTION!')
          .targetEvent(ev)
          .ok('YES')
          .cancel('NO');

    $mdDialog.show(confirm).then(function() {
    	$scope.delete_credit_data_db(delid,db);
      $scope.status = 'You decided to get rid of your debt.';
    }, function() {
      $scope.status = 'You decided to keep your debt.';
    });
  };



 
		$scope.doUpdate = function(event) {
		    $mdDialog.show(
		      $mdDialog.alert()
		        .title('Update')
		        .textContent('')
		        .ariaLabel('')
		        .ok('')
		        .targetEvent(event)
		    );
		  };
		  $scope.doDelete = function(event) {
		    $mdDialog.show(
		      $mdDialog.alert()
		        .title('Delete')
		        .textContent('')
		        .ariaLabel('')
		        .ok('')
		        .targetEvent(event)
		    );
		  };
		   $scope.showhide = function() {
		   
		   	$scope.inputhide = false;
		   	$scope.outputhide= true;
		   	
		  };

		  $scope.enablegenerate = function() {
		   
		   	$scope.generated = false;
		   	
		  };

		  $scope.ungenerated = function() {
		   
		   	// $scope.generated = true;

		   	
		  };
		   $scope.printDiv = function (printable) {
		   	alert("printed");
        var printContents = document.getElementById(printable).innerHTML;
        var popupWin = window.open('', '_blank', 'width=300,height=300');
        popupWin.document.open();
        popupWin.document.write(printContents);
        popupWin.document.close();
    }

		      	$scope.update_cancel = function(){
			$scope.inputhide = true;
		   	$scope.outputhide= false;
		   	$scope.remit={};

    	}
    	$scope.dayofftoggle = function(){
    		if ($scope.dayoffdaychecked == 1){
    			$scope.dayoffdaychecked = 0;
    		}
    		else
    			$scope.dayoffdaychecked = 1;
    	}



		$scope.displayPayslip = function displayPayslip(){
			$http.post('model/getPayslip.php').then(function(data){
				
				$scope.payslipTableData= data.data;
				$window.open('views/Reports/payslipPreview.html', '_blank');


				console.log(data);

		});

		}



		  
			//MSG
 $scope.showAlertSave = function(ev) {
    // Appending dialog to document.body to cover sidenav in docs app
    // Modal dialogs should fully cover application
    // to prevent interaction outside of dialog
    $mdDialog.show(
      $mdDialog.alert()
        .parent(angular.element(document.querySelector('#popupContainer')))
        .clickOutsideToClose(true)
        .title('Success!')
        .textContent('You have successfully saved the record.')
        .ariaLabel('Alert Dialog Demo')
        .ok('Got it!')
        .targetEvent(ev)
    );
  };
  //MSG


		

	}]);