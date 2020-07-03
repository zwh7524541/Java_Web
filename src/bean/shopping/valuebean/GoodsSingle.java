package bean.shopping.valuebean;


public class GoodsSingle {
    private String name;
    private int price;
    private int num;
    public GoodsSingle(String name, int f, int num){
        this.name = name;
        this.price = f;
        this.num = num;
    }
    public GoodsSingle() {

    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public float getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }


}

