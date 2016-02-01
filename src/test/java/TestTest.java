package test.java;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;

public class TestTest {
  @Test
  public void FakeTest() {
    System.out.println("PATH: " + System.getenv("PATH"));
    System.out.println("BLAH env: " + System.getenv("BLAH"));
    System.out.println("BLAH system propr: " + System.getProperty("BLAH"));
    System.out.println("FOO env: " + System.getenv("FOO"));
  }
}
