/**
 * 
 */
//변수 선언
 
 //명명함수 선언
//function 함수명(매개변수 선언){return}

//let, const
const btn = document.getElementById("btn");
const id = document.getElementById("inputId");
const ch =document.getElementsByClassName("ch");//배열 형식
const frm =document.getElementById("frm");
const pw = document.getElementById("inputPassword");
const rname = document.getElementById("inputName");
const phone = document.getElementById("inputPhone");
const mail = document.getElementById("inputMail");
const pwerror = document.getElementById("pwerror");

const del = document.getElementById("del");









btn.addEventListener("click",function(){
    pwerror.innerHTML="";
    if(id.value=="" ||pw.value=="" ||rname.value=="" ||phone.value=="" ||mail.value==""){
        alert('모든 정도 입력바람')
    }if(pw.value=="" || pw.value.length<6){
      pwerror.innerHTML="password가 비어있거나 6글자 이상이어야합니다.";
      pw.focus();
      return;
    }else{
        alert('ok')
        frm.submit();
    }
});




// btn.addEventListener("click",function(){
//     const checks = [false,false,false,false,false]
    
// for(let i=0;i<ch.length;i++){
   
//     if(ch[i].value!=""){
//         checks[i]=true;
//     }
//         }
//    let result = true;
//     for(let c of checks){

//     if(!c){
//         result= false;
//     }
//    }
//    if(result){
//     alert('Ok')
//     frm.submit();
//    }else{
//     alert('fail')
//    }
// });
