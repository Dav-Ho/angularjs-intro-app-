// number 1

var i = 11;

while( i > 0) {
 i--;
 console.log(i)
}
console.log(i)

// number 2

function numbers(num){
  for(i = 0; i < num.length; i++){
  console.log(num[i]);
  }
  return num
}

 numbers([5, 23, 98, 234, 1, 0, 3, 177]);

 // number 3

 function average(num){
  average = 0
    for(i = 0; i < num.length; i++){
     average += num[i];
    }
  return average/num.length
  }

  average([5, 23, 98, 234, 1, 0, 3, 177]);

  //number 4

  function average(num){
   average = 0
     for(i = 0; i < num.length; i++){
      average += num[i];
     }
   return average/num.length
   }

   average([5, 23, 98, 234, 1, 0, 3, 177]);

// number 5
   var num = 0

  for (i = 0; i <= 100; i++){
    if(num % 3 === 0 && num % 5 === 0){
       console.log("FizzBuzz");
     } else if(num % 5 === 0){
       console.log("Buzz");
  } else if(num % 3 === 0){
       console.log("Fizz");
  }
    else
      console.log(num)
  }

// number 6

function sum(num1, num2){
  return num1 + num2
}

sum(5, 2)

//number 7


function average(num){
 average = 0
   for(i = 0; i < num.length; i++){
    average += num[i];
   }
 return average/num.length
 }

 average([5, 23, 98, 234, 1, 0, 3, 177]);

 // number 8

 function newBook(book){
   console.log(book.title, book.author, book.isbn, book.pages, book.yearOfPublication)
 }
 newBook(book)

 // number 9

 function createBook(title, author,isbn, pages, yearOfPublication){
   console.log(title, author, isbn, pages, yearOfPublication);
 }


 var mobyDick =  createBook("Moby Dick", "Herman Melville", 704, "0553213113", "1851")
