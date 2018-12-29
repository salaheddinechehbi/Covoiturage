
package IDao;

import java.util.List;

public interface IDao<S>{
    
    void create();
    void delete();
    void update();
    S findById(int id);
    List<S> FindAll();
    
}
