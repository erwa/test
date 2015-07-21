import java.io.File;

import org.apache.avro.Schema;

import org.apache.pig.piggybank.storage.avro.AvroStorageUtils;


class TestDetectRecursive<T> {

  public static void main(String[] args) throws Exception {
    Schema s = new Schema.Parser().parse(new File("/home/ahsu/recursive.avsc"));

    System.out.println("s containsRecursiveRecord?: " + AvroStorageUtils.containsRecursiveRecord(s));
  }
}
