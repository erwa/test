import org.junit.Test;


public class TestTest {
  @Test
  public void FakeTest() {
    System.out.println("PATH: " + System.getenv("PATH"));
    System.out.println("BLAH env: " + System.getenv("BLAH"));
    System.out.println("BLAH system propr: " + System.getProperty("BLAH"));
    System.out.println("FOO env: " + System.getenv("FOO"));
    //    String[] script = new String[] { "bash", "-c", "tar tf /home/ahsu/github/erwa/test/te*.gz" };

    //    runScript(script, null);
  }
}
