function bubble_sort(arr: [u32; 10]) -> [u32; 10] {
    for i in 0..9 {
        for j in 0..9-i {
            if arr[j+1] < arr[j] {
                let swap:u32 = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = swap;

            } 
        }
    }
    return arr;
}

function main(unsorted: [u32; 10]) -> [u32; 10] {
    return bubble_sort(unsorted);
}
