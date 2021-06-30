
function bubble_sort(arr: [u32; 10]) -> [u32; 10] {
    for i in 0..10 {
        for j in 0..9-i {
            if arr[j+1] < arr[j] {
                console.log("swapping: {} , {}", arr[j], arr[j+1]);
                let swap = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;
            } 
        }
    }
       console.log("arr is: {}", arr);
    return arr;
}

function main(unsorted: [u32; 10]) -> [u32; 10] {
    return bubble_sort(unsorted);
}

@test
function test_bubble_sort() {
    let unsorted: [u32; 10]
        = [8u32, 2u32, 4u32, 3u32, 5u32, 10u32, 7u32, 1u32, 9u32, 6u32];
    let expected: [u32; 10]
        = [1u32, 2u32, 3u32, 4u32, 5u32, 6u32, 7u32, 8u32, 9u32, 10u32];
    
    let result = bubble_sort(unsorted);
    console.log("Result is: {}", result);
    console.assert(result == expected);
}
