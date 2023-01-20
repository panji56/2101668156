function checkout(){
    let pay=document.getElementById("payment").value;
    let grand=document.getElementById("grandtotal").value;
    let chg=document.getElementById("change");
    let pat= new RegExp(/^[0-9]+$/);
    let flag=true;
    let foodList = document.getElementsByTagName("divmenu");
    if(foodList.length<1){
        alert("please choose your menu");
    }
    else{
        for(let i=0;i<foodList.length;i++){
            if(pat.test(foodList[i].children.foodqty.value)){
                flag=true;
            }else{
                flag=false;
                break;
            }
        };
        if(!flag){
            alert("food QTY must not be empty and numeric");
        }
        else if(!pat.test(pay)){
            alert("payment must not empty or numeric");
        }
        else if(parseInt(pay)<parseInt(grand)){
            alert("payment to small");
        }
        else{
            chg.value=parseInt(pay)-parseInt(grand);
            let x=document.getElementById("cashierform");
            x.action="write.jsp";
            x.method="post";
            x.submit();
        }
    }
}
function comment(){
    let commentarea=document.getElementById("usercomment").value;
    let email=document.getElementById("email").value;
    let pat=new RegExp(/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/);
    if(pat.test(email)){
        if(commentarea==""){
            alert("fill the comment");
            return false;
        }else{
            return true;
        }
    }else{
        alert("wrong email format");
        return false;
    }
}
function changeCount(){
    let pay=document.getElementById("payment").value;
    let grand=document.getElementById("grandtotal").value;
    let chg=document.getElementById("change");
    chg.value="";
    let pat= new RegExp(/^[0-9]+$/);
    if(pat.test(pay)){
        if(parseInt(pay)>=parseInt(grand)){
            chg.value=parseInt(pay)-parseInt(grand);
        }
    }
}