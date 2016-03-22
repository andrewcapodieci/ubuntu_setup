#include "moduleA/FileTemplate.h"
#include "moduleA/Header.h"
#include "moduleB/Header.h"

#include <ThirdPartyHeader.h>
#include <STLHeader.h>
#include <SystemHeader.h>

namespace name
{

/////////////////////////////////////////////////////////////////
/// @brief This is a brief (one line) description of the method
///
/// @param[in] a description of argument a
/// @param[out] b description of argument b
///
/// This is a detailed description of the class that spans
/// several lines.
///
/// @bug text explaining the bug
/// @note caveats or interesting relevant pieces go here
/////////////////////////////////////////////////////////////////
FileTemplate::FileTemplate( const float& a, float& b ) : foo( a )
{
  foo2( b );
}

/////////////////////////////////////////////////////////////////
/// @brief This is a brief (one line) description of the method
/// @return This describes the return type/value of function or
///         method. If its more than one line, that's ok.
/// @param[in] a description of argument a
/// @param[out] b description of argument b
///
/// This is a detailed description of the class that spans
/// several lines.
///
/// @bug text explaining the bug
/// @note caveats or interesting relevant pieces go here
/////////////////////////////////////////////////////////////////
void FileTemplate::function( const Bar& b )
{
  if( b.empty( ) )
    std::cout << "Bar is emtpy." << std::endl;
  return;
}

} // namespace
