#pragma once
#include <string>
#include <fstream>

namespace fs {
  void writeFile(std::string file, std::string data) {
    std::ofstream File(file);

    File << data;
  }

  std::string readFile(std::string file) {
    std::ifstream File(file);

    std::string content, line;

    while(std::getline(File, line)) {
    content += line + '\n';
    }

    return content;
  }

  void appendFile(std::string file, std::string data) {
    std::string content = readFile(file);
    content += data;

    writeFile(file, content);
  } 
}
