package bean.shopping.toolbean;

import java.util.ArrayList;

import bean.shopping.toolbean.MyTools;
import bean.shopping.valuebean.GoodsSingle;

public class ShopCar {
    private ArrayList<GoodsSingle> buyList = new ArrayList<GoodsSingle>();
    public ArrayList<GoodsSingle> getBuys(){
        return this.buyList;
    }
    public GoodsSingle findGood(int i) {
        return buyList.get(i);
    }
    public void addItem(GoodsSingle g) {
        if(buyList.size() == 0) {
            buyList.add(g);
        }else {
            int i = 0;
            for(; i < buyList.size(); i++) {
                if(g.getName().equals(buyList.get(i).getName())) {
                    buyList.get(i).setNum(buyList.get(i).getNum()+1);
                    break;
                }
            }
            if(i >= buyList.size()) {
                buyList.add(g);
            }
        }
    }
    public void reduceItem(GoodsSingle g) {
        if(buyList.size() == 0) {
            System.out.println("no item to reduce!");
        }else {
            int i = 0;
            for(; i < buyList.size(); i++) {
                if(g.getName().equals(buyList.get(i).getName())) {
                    if(buyList.get(i).getNum() > 1) {
                        buyList.get(i).setNum(buyList.get(i).getNum()-1);
                        break;
                    }else if(buyList.get(i).getNum() == 1) {
                        buyList.remove(buyList.get(i));
                        break;
                    }
                }
            }
        }
    }
    public void removeItem(GoodsSingle g) {
        if(buyList.size() == 0) {
            System.out.println("没有可以删除的选项！");
        }else {
            buyList.remove(g);
        }
    }
    public void clearItem(String name) {
        if(buyList.size() == 0) {
        }else {
            int i = 0;
            for(; i < buyList.size(); i++) {
                if(MyTools.toChinese(name).equals(buyList.get(i).getName())) {
                    buyList.remove(i);
                }
            }
        }
    }
    public void clearCar() {
        buyList.clear();
    }



}