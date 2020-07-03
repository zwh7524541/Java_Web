package bean.shopping.valuebean;
import java.util.ArrayList;

public class GoodsList {
    private ArrayList<GoodsSingle> goodsList = new ArrayList<GoodsSingle>();

    public ArrayList<GoodsSingle> getGoodList(){
        return this.goodsList;
    }
    public GoodsSingle findGood(int i) {
        return goodsList.get(i);
    }
    public void addGoods(GoodsSingle g) {
        this.goodsList.add(g);
    }
    public void removeGoods(GoodsSingle g) {
        int index = goodsList.indexOf(g);
        this.goodsList.remove(index);
    }
    public void clearGoods() {
        this.goodsList.clear();
    }
}

