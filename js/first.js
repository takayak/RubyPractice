// var jsbook = {title:'javascript入門',price:2500,stock:10};
// for (var p in jsbook){
//   console.log(p + '=' +jsbook[p]);
// }

// function f(a,b){
//   if (b == 0 ){
//     return a
//   } else {
//     console.log(a % b);
//     return f(b,a % b)
//   }
// }
// f(8,0)
// console.log(a % b)

// fucntion f( int x){
//   if (x <= 1){
//     return 0
//   }else if{ x % 2 == 0 
//   return f(x+1)+x;
//   }else{
//   }return f(x-3)-x
// }

int f(x){
  if (x <= 1){
    return 0;
  } else if (x % 2 == 0){
    return f(x+1)+1;
  } else{
    return f(x - 3 ) - x ;
  }
}