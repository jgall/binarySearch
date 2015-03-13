
void setup(){
  int[] primes = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
  println(binarySearch(67, primes));

}

int binarySearch(int term, int[] array){
  int left = 0, right = array.length-1, midpoint;
  while(left != right){
    midpoint = (left+right)/2;
    if(term == array[midpoint]) return midpoint;
    else if(term < array[midpoint]) right = midpoint;
    else if(term > array[midpoint]) left = midpoint;
    
  }
  return -1;
}
