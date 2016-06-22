import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Etl {
   public Map<String, Integer> transform(Map<Integer, List<String>> old) {
      HashMap expected = new HashMap<>();
      for (Map.Entry<Integer, List<String>> entry : old.entrySet()) {
         int points = entry.getKey();
         for (String oldLetters : entry.getValue()) {
            String newLetters = oldLetters.toLowerCase();
            expected.put(newLetters, points);
         }
      }
      return expected;
   }
}
