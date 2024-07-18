
const add = document.getElementById("add");
const result = document.getElementById("result");
let idx=0;

//최대첨부파일 갯수 조정
let max=1;

//만든 횟수
let count = 0;

function setMax(m){
    max=m;
}


result.addEventListener("click", function(e){
  
    if(e.target.id=="del"){
      //  e.target.parentNode.parentNode.remove();
    let ids =e.target.getAttribute("data-del-id");
    document.getElementById(ids).remove();
    count--;
    }
   
})




add.addEventListener("click",function(){
    if(count>=max){
        alert("첨부파일은"+max+"개만 가능");
        return;
    }
    let parent = document.createElement("div");
    parent.id="file"+idx
    parent.classList.add("input-group","mb-3");

    let input = document.createElement("input"); //<input
    input.type="file";                      //<input type ="file"
    input.name="files";
    input.classList.add("form-control"); //<input type ="file" class="form-control"
    parent.append(input);

    let span = document.createElement("span");
    span.classList.add("input-group-text")
    span.id="del";
    span.setAttribute("data-del-id","file"+idx);
    span.innerText="X";
    parent.append(span);
    result.append(parent);

    idx++;
    count++;
});
