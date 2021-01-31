#include <iostream>
#include <string>

class Logger {
	public:
	  void error(std::string message) {
	  	std::cout << "[ERROR] \n " << message << std::endl;
	  }
	  
	  void warn(std::string message) {
	  	std::cout << "[WARNING]\n " << message << std::endl;
	  }
	  
	  void info(std::string message) {
	  	std::cout << "[INFORMATION] \n " << message << std::endl;
	  }
};