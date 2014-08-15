import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;

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

  /**
   * Runs a script after setting the passed in environment variables
   * and returns the exit status or -1 if an exception was thrown.
   * Any stdout or stderr output written by the script will also be printed.
   *
   * @param script: The script to run
   * @return: The exit status
   */
  private static int runScript(String[] command, Map<String, String> envSubstitutions) {
    ProcessBuilder pb = new ProcessBuilder().command(command).redirectErrorStream(true);

    if (envSubstitutions != null) {
      // Set passed in environment variables
      Map<String, String> env = pb.environment();
      for (Map.Entry<String, String> entry : envSubstitutions.entrySet()) {
        //        System.out.println("Making the following substitution: " + entry.getKey() + " " + entry.getValue());
        env.put(entry.getKey(), entry.getValue());
      }
    }

    try {
      Process p = pb.start();

      InputStream inputStream = p.getInputStream();
      final BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));

      String line;
      while ((line = br.readLine()) != null) {
        System.err.println(line);
      }

      p.waitFor();
      return p.exitValue();
    } catch (IOException e) {
      e.printStackTrace();
    } catch (InterruptedException e) {
      e.printStackTrace();
    }

    return -1;
  }
}
