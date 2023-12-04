package trabalho.store;

import com.intuit.karate.junit5.Karate;

class storeRunner {
    
    @Karate.Test
    Karate testStore() {
        return Karate.run("store").relativeTo(getClass());
    }    

}
