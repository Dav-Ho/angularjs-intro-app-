function firstTask(){
  console.log("First task done")
}
function secondTask(){}
  console.log("Second task done")

function thirdTask(){
  console.log("Third task done")
}

SetTimeOut(function(){console.log("First task done");}, 2000);
SetTimeOut(function(){console.log("Second task done");}, 2000);
SetTimeOut(function(){console.log("Third task done");}, 2000);
