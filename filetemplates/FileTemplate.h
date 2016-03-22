#pragma once

#include "moduleA/ProjectHeader.h"
#include "moduleA/ProjectHeader.h"
#include "moduleB/ProjectHeader.h"

#include <ThirdPartyHeader.h>
#include <STLHeader.h>
#include <SystemHeader.h>

class ForwardDec;

namespace name
{

/////////////////////////////////////////////////////////////////
/// @brief This is a brief (one line) description of the class
///
/// This is a detailed description of the class that spans
/// several lines and characterizes the basic functionality of
/// the class.
///
/// @note caveats or interesting relevant pieces go here
/////////////////////////////////////////////////////////////////
class FileTemplate
{
public:
  FileTemplate( );

  int fooClass( ) const;
  void setFooClass( const int& fooClass );
  void doSomething( int& val );

  template<typename T>
  void tempFoo( T one, T two );

protected:
  void doSomethingPrivate( int& val );

  int m_foo; ///< descriptive comment
  unsigned char m_bar_m; ///< comment; units = meters; Range [0-200], -1 = error
};

} // namespace

// Inline and/or Template Implementations -- only create an hpp file when you have 4 or more inline/template functions
#include "module/FileTemplate.hpp"

#endif // #ifndef FileTemplate_h
