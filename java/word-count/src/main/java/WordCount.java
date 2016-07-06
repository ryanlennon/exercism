import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WordCount {

    public Map<String,Integer> phrase(String words) {
        Map<String, Integer> wordStorage = new HashMap();
        String[] wordsArray = words.toLowerCase().replaceAll("[^a-z0-9]", " ").split("\\s+");
        for (String word : wordsArray) {
            Integer count = wordStorage.containsKey(word) ? wordStorage.get(word) : 0;
            wordStorage.put(word, ++count);
        }

        return wordStorage;
    }

}
