#include <stdio.h>

// From http://stackoverflow.com/questions/17329288/
// License: http://creativecommons.org/licenses/by-sa/3.0/
// Author: Ast Derek, https://github.com/AstDerek
size_t writer(void *buffer, size_t size, size_t nmemb, void *stream) {
  fwrite(buffer, size, nmemb, (FILE *) stream);
  return size * nmemb;
}
