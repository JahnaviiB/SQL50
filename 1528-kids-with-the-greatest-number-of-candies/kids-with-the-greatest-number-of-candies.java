class Solution {
    public List<Boolean> kidsWithCandies(int[] candies, int extraCandies) {
        int j = Arrays.stream(candies).max().orElse(0);
        List<Boolean> result = new ArrayList<>();
        for(int i =0;i < candies.length; i++)
        {
            
            if(candies[i] + extraCandies >= j)
                result.add(true);
            
            else
                result.add(false);
        }
        return result;
        
    }
}