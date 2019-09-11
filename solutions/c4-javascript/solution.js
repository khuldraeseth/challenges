var arr = [1, 2, 4, 3];
var arr1 = [1, 4, 4, 4, 4, 4, 3, 2, 1, 2];
var arr2 = [6, 7, 3, 2, 1];

function uniqueSort(arr) {
    var res = Array.from(new Set(arr)).sort((a, b) => a - b);
    console.log(res);
}

uniqueSort(arr);
uniqueSort(arr1);
uniqueSort(arr2);
