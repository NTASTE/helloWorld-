dnl $Id$
dnl config.m4 for extension helloWorld

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(helloWorld, for helloWorld support,
dnl Make sure that the comment is aligned:
dnl [  --with-helloWorld             Include helloWorld support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(helloWorld, whether to enable helloWorld support,
[  --enable-helloWorld           Enable helloWorld support])

if test "$PHP_HELLOWORLD" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-helloWorld -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/helloWorld.h"  # you most likely want to change this
  dnl if test -r $PHP_HELLOWORLD/$SEARCH_FOR; then # path given as parameter
  dnl   HELLOWORLD_DIR=$PHP_HELLOWORLD
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for helloWorld files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       HELLOWORLD_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$HELLOWORLD_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the helloWorld distribution])
  dnl fi

  dnl # --with-helloWorld -> add include path
  dnl PHP_ADD_INCLUDE($HELLOWORLD_DIR/include)

  dnl # --with-helloWorld -> check for lib and symbol presence
  dnl LIBNAME=helloWorld # you may want to change this
  dnl LIBSYMBOL=helloWorld # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $HELLOWORLD_DIR/$PHP_LIBDIR, HELLOWORLD_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_HELLOWORLDLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong helloWorld lib version or lib not found])
  dnl ],[
  dnl   -L$HELLOWORLD_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(HELLOWORLD_SHARED_LIBADD)

  PHP_NEW_EXTENSION(helloWorld, helloWorld.c, $ext_shared)
fi
