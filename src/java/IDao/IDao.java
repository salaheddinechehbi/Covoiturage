
package IDao;

import java.util.List;

public interface IDao<S>{
    
    void create(S o);
    void delete(S o);
    void update(S o);
    S findById(int id);
    List<S> FindAll();
    
}
