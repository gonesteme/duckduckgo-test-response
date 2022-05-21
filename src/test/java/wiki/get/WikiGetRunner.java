package wiki.get;

import com.intuit.karate.junit5.Karate;

public class WikiGetRunner {
    @Karate.Test
    Karate userGet() {
        return Karate.run().relativeTo(getClass());
     }
}
