import java.util.List;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Etl {
	
   public Map<String, Integer> transform(Map<Integer, List<String>> old) {
	   HashMap new_map = new HashMap<String, Integer>();
	   
	   old.entrySet().stream().forEach(map -> {
		   map.getValue().stream().forEach(letter -> 
										   new_map.put(letter.toLowerCase(), map.getKey()));
	   });
	   
      return new_map;
   }
}
