class Test<T>{

  public static void main(String[] args) throws Exception {
    System.out.println("hello, world!");
    String prop = System.getProperty("foo");
    if (prop == null) {
      System.out.println("prop is null.");
    } else {
      System.out.println("prop = " + prop);
    }
  }
}
