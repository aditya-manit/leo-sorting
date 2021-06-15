function main(unsorted: [u32; 10]) -> [u32; 10] {
    return sortThemAll(unsorted);
}


function sortThemAll(arr: [u32; 10]) -> [u32; 10] {
    for i in 0..9 {

        console.log("Current index: {}", i);
        let minIndex = i;
        for j in i+1..10 {
             minIndex =   (arr[j] < arr[minIndex]) ? j: minIndex;
        }

        if (minIndex != i) {

            console.log("Swapping current index and min index: {}", minIndex);
            let temp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = temp;
        }

    }

    console.log("Sorted Array: {}", arr);
    return arr;
}
