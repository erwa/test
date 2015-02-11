import java.io.File

def a = [ new File("a"), new File("b") ]
a.name.each{println it}
