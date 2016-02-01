import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.hadoop.hive.conf.HiveConf;
import org.apache.hadoop.hive.metastore.MetaStoreThread;
import org.apache.hadoop.hive.metastore.api.MetaException;

import java.util.concurrent.atomic.AtomicBoolean;


public class ExampleMetaStoreThreadService implements MetaStoreThread {
  public static final Log LOG = LogFactory.getLog(ExampleMetaStoreThreadService.class);

  @Override
  public void setHiveConf(HiveConf conf) {
    LOG.info("Setting HiveConf in ExampleMetaStoreThreadService");
  }

  @Override
  public void setThreadId(int threadId) {
    LOG.info("Setting thread id in ExampleMetaStoreThreadService");
  }

  @Override
  public void init(AtomicBoolean stop, AtomicBoolean looped) throws MetaException {
    LOG.info("Initing ExampleMetaStoreThreadService");
  }

  @Override
  public void start() {
    LOG.info("Starting ExampleMetaStoreThreadService");
  }

}
