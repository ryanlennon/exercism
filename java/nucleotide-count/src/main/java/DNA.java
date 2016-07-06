import jdk.internal.org.objectweb.asm.tree.analysis.Value;

import java.security.Key;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

public class DNA {
    final String DNA = "ACGT";
    final String basePairs;

    public DNA(String basePairs){
        this.basePairs = basePairs;
    }


    public int count(Character base) {
        if (DNA.indexOf(base) == -1) {throw new IllegalArgumentException();}
        String strBase = base.toString();
        String sequenceWithoutBase = basePairs.replace(strBase, "");
        return basePairs.length() - sequenceWithoutBase.length();
    }

    public Map nucleotideCounts() {
        Map<Character, Integer> nucleotides = new HashMap();
        nucleotides.put('A', 0);
        nucleotides.put('C', 0);
        nucleotides.put('G', 0);
        nucleotides.put('T', 0);

        for (char bases : basePairs.toCharArray()){
            nucleotides.put(bases, nucleotides.get(bases) + 1);
        }
        System.out.println(nucleotides);
        return nucleotides;

    }
}
