#ifndef EZLIB_FS_HPP
#define EZLIB_FS_HPP

#include <string>

namespace fs {
  void writeFile(std::string file, std::string data);
  std::string readFile(std::string file);
  void appendFile(std::string file, std::string data);
}

#endif
