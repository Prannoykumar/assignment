<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	function duplicates(){
		var num=document.getElementById("num").value;
		var numArr=num.split(",");
		//alert ("Val = "+numArr[6]);
		
		var numInput=new Array(20);
		
		//storing elements in array
		for(i=0;i<numArr.length;i++){
			if(!isNaN(numArr[i])){
			//alert(numArr[i]);
				numInput[i]=parseInt(numArr[i]);
				//alert(numInput[i]);
			}
			else{
			 var rangeNum=numArr[i];
			// alert(rangeNum)
			 var rangeNumArr=rangeNum.split("-");
			 var low=parseInt(rangeNumArr[0]);
			  //alert(parseInt(rangeNumArr[0]-rangeNumArr[1])) 
			 for(j=0;j<=(parseInt(rangeNumArr[1]-rangeNumArr[0]));j++){
			 	numInput[i]=low;
			 	//alert(numInput[i]);
			 	++low;
			 	++i;
			 } 
			 //Sample array
			
			 }
			}
			 
				
			
			/* for (k=0;k<numInput.length;k++){
				document.write(numInput[k]);
			} */	
		
		 var sampleArr=new Array(501,502,503,504,505,506,507,508,509,510);
			 //alert(sampleArr[0]);
			 document.write("Duplicate elements = &nbsp")
			 for(i=0;i<numInput.length;i++){
			 	for(j=0;j<sampleArr.length;j++){
			 		if(numInput[i]==sampleArr[j]){
			 			//alert(numInput[i]);
			 			document.write(numInput[i]+"&nbsp    ");
			 			//document.getElementById("disp").innerHTML=numInput[i];
			 		}
			 	}
			 }	
		document.write("<br /><br />Unique elements = &nbsp")
         var array3 = numInput.filter(function(obj) { return sampleArr.indexOf(obj) == -1; });
         for(i=0;i<array3.length;i++){
         	document.write(array3[i]+"&nbsp");
         }
		
// 		alert(numInput[0]);
// 		alert(numInput[1]);
// 		alert(numInput[2]);
// 		alert(numInput[3]);
// 		alert(numInput[4]);
// 		alert(numInput[5]);
		//alert(numInput[6]);
		//alert(numInput[7]);
		//alert(numInput[8]);
		//alert(numInput[9]);
		//alert(numInput[10]);
		//alert(numInput[11]);
		   
		//document.getElementById("disp").innerHTML=numInput[7];
	}
</script>
</head>
<body>
	Hello World
	<input type="text" id="num" />
	<br>
	<p id="disp"></p>
	<button onclick="duplicates()">Click</button>
</body>
</html>