#include <ezlib/fs.hpp>

int main() {
  fs::writeFile("./index.js", "const os = require('os')");
}
