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

    public String getName() {
        return name;
    }

    public float getPrice() {
        return price;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }


}

