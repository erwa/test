import test.TestInterface;

class Test<T>{

     public static void main(String[] args) {
     	TestInterface ti = new TestInterface() {
            public void test() {
                System.out.println("hi");
            }
        };

        ti.test();
     }

}
