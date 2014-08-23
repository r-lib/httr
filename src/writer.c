#include <stdio.h>
#include <R.h>
#include <Rdefines.h>

// From http://stackoverflow.com/questions/17329288/
// License: http://creativecommons.org/licenses/by-sa/3.0/
// Author: Ast Derek, https://github.com/AstDerek
size_t writer(void *buffer, size_t size, size_t nmemb, void *stream) {
  fwrite(buffer, size, nmemb, (FILE *) stream);
  return size * nmemb;
}

// From: RCurl
// BSD_3_clause
// YEAR: 2001-2014
// COPYRIGHT HOLDER: Duncan Temple Lang
// ORGANIZATION: Bell Labs, Lucent Technologies; University of California
void close_file(SEXP r_file) {
  FILE *f = (FILE *) R_ExternalPtrAddr(r_file);
  if (f) {
    fflush(f);
    fclose(f);
    R_SetExternalPtrAddr(r_file, NULL);
  }
}
