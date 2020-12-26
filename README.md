# Ezlib

## 1. **File System** 
  + Writing to files becomes easier in C++
  + Reading files is exceptionally easy
  + Super clean syntax

    ### **Writing to a File**
    ```cpp
    // main.cpp
    #include <iostream>
    #include "modules/fs.hpp"

    int main() {
      fs::writeFile("./test.txt", "hello world!")
      return 0;
    }
    ```

    Expected output in `test.txt`:
    ```
    hello world!
    ```

    ### **Reading a file**

    ```cpp
    #include <iostream>
    #include <string>

    int main() {
      //assuming we read the file right after we wrote to it (read above)
      std::string text = fs::readFile("./test.txt");

      std::cout << text << std::endl;
      return 0;
    }
    ```

    Expected output in the terminal:
    
    ```
    hello world!
    ```

    ### **Append to a file**

    ```cpp
    #include <iostream>
    int main() {
      fs::appendFile("./test.txt", "Appending a file is super easy!");
    }
    ```

    Would show the following in `test.txt`

    ```
    hello world!
    Appending a file is super easy!
    ```
    