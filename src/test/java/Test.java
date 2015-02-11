import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileStatus;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;


class Test<T>{
  public static void main(String[] args) throws Exception {
    FileSystem fs = FileSystem.get(new Configuration());
    FileStatus[] statuses = fs.listStatus(new Path("/home/ahsu"));
    Arrays.sort(statuses);
    for (FileStatus s : statuses) {
      System.out.println(s.getPath());
    }
  }

  public void foo() {
    System.out.println("foo");
    bar();
  }

  public void bar() {
    System.out.println("bar");
  }

  public static interface A<T> {

  }

  public static class B<T> implements A<T> {

  }

  public static interface MyInterface {
    void foo(A<?> a);
  }

  /*public static class MyInterfaceImpl<T> implements MyInterface<T> {
    @Override
    public void foo(B<?> b) {

    }
  }*/
}
