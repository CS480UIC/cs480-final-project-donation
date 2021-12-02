package item.service;

import item.dao.ItemDao;
import item.domain.Item;
import order.domain.Order;
import order.service.OrderException;

import java.util.List;

/**
 * logic functions such as register, login
 * @author Kai Qi && Aji
 */
public class ItemService {
    private ItemDao itemDao = new ItemDao();

    /**
     * create item
     */
    public void createItem(Item form) throws ItemException, ClassNotFoundException, InstantiationException, IllegalAccessException{

        Item item = itemDao.findItemByNameAndCategory(form.getCategory_id(), form.getItem_name());
        if(item.getCategory_id()!=null && item.getCategory_id().equals(form.getCategory_id())
            && item.getItem_name() != null && item.getItem_name().equals(form.getItem_name()))
            throw new ItemException("This Item has already created!");
        itemDao.add(form);
    }

    public void updateItemById(Item form) throws ItemException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Item item = getItem(form);
        if (item == null) throw new ItemException("This item is not in the database");
        itemDao.updateItemById(item);
    }

    public void deleteItemByName(Item form) throws ItemException, ClassNotFoundException, InstantiationException, IllegalAccessException{
        Item item = getItem(form);
        if (item == null) throw new ItemException("This item is not in the database");
        itemDao.deleteItemByName(item.getItem_name());
    }


    /**
     * get Item
     */
    public Item getItem(Item form) throws ItemException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        Item item = itemDao.findItemByNameAndCategory(form.getCategory_id(), form.getItem_name());
        if(item.getItem_name() == null || item.getItem_name().isEmpty()) throw new ItemException("This item is not in the database");
        return item;
    }

    public List<Object> findallItems() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
        return itemDao.findall();

    }
}
