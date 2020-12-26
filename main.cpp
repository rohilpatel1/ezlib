#include <iostream>
#include <string>

#include "modules/fs.hpp"

int main() {
  fs::appendFile("./index.js", "const os = require('os')");

  return 0;
}
