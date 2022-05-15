# 0.5
- Most of the compiler has been rewritten, in many places the code has become more readable.
- Added support for fields in types.
- Strings and symbols now support all unicode characters. (utf32)
- Improved work with Unicode. (digit?, letter?, toUpper ...)
- Enumerations have been reworked. Now enums have their own types, and access to an enum element has a new syntax.
- Reworked 'eSwitch' operator.
- Added the ability to write code in global constants, as in functions.
- Speed up compilation time.
- Reduced size of generated binaries.
- For functions with the 'this' attribute, for non-overridden functions, one function is generated for all types.
- Added the ability to specify types for keys and items in the 'parse' operator.
- Improved work of global constants, the value of which was originally a constant.
- Added support for documentation comments.
- When a program terminates, it waits for all threads to finish.
- Added warning when declaring a variable that does not change in the code.
- In objects of type "STD::Dict" both keys and values can now have different types.
- An external library (libshar-os-api) is no longer required to run the created programs.
- Code line wrapping is made more intuitive.
- The random number generator is now different for each thread.
- Changed the algorithm for generating random numbers.
- Under the hood, a maximum of two versions of functions are now created. (before there were 4)
- Fixed a bug due to which in some cases a function was created without code.
- Fixed a serious error when reading files.
- In the standard module, the order of the 'repeat' function arguments has been changed to a more logical one.
- The 'BitsArray' group has been removed from the standard module.
- Added type 'STD::Byte' and type 'STD::Bytes' is now an array of bytes.
- Improved serialization and deserialization of strings.
- Added function attribute 'deprecated'.
- The compiler is written in for compilation version 0.5.
- Fixed many minor bugs.

# 0.4
- Added pattern matching.
- Added the ability to transfer data to the catcher when throwing exceptions.
- Added additional syntactic sugar. (a\[b:\], a[:b\])
- Many bug fixes.
- Minor code improvements.

# 0.3.1
- Fixed a problem with applications crashing when an exception occurs when executing a global constant code.
- Fixed problem with joining splitted strings.

# 0.3
- Added operator 'nothrow'.
- Added the ability to add multiple groups in the 'this' function attribute.
- Added the ability to call the original function from an overridden function.
- Added constructors.
- Various improvements and fixes.

# 0.2
- Added multithreading support.
- Added the ability to iterate over types from a group.
- Added the ability to check for several possible errors in tests.
- Added operator 'do'.
- Various improvements and fixes.
