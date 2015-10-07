﻿#==============================================================================
# Copyright (c) 2015 Frozen Team.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation 
# the rights to use, copy, modify, merge, publish, distribute, sublicense, 
# and/or sell copies of the Software, and to permit persons to whom the 
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included 
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
# SOFTWARE.
#==============================================================================
#
# Look for a version of EntityX on the local machine
#
# By default, this will look in all common places. If EntityX is built or
# installed in a custom location, you're able to either modify the
# CMakeCache.txt file yourself or simply pass the path to CMake using either the
# environment variable `ENTITYX_ROOT` or the CMake define with the same name.


set(ENTITYX_PATHS	${ENTITYX_ROOT}
					$ENV{ENTITYX_ROOT}
					~/Library/Frameworks
					/Library/Frameworks
					/usr/local
					/usr
					/sw
					/opt/local
					/opt/csw
					/opt)

find_path(ENTITYX_INCLUDE_DIR entityx/entityx.h PATH_SUFFIXES include PATHS ${ENTITYX_PATHS})
find_library(ENTITYX_LIBRARY NAMES entityx PATH_SUFFIXES lib PATHS ${ENTITYX_PATHS})
find_library(ENTITYX_LIBRARY_DEBUG NAMES entityx-d PATH_SUFFIXES lib PATHS ${ENTITYX_PATHS})
mark_as_advanced(ENTITYX_INCLUDE_DIR ENTITYX_LIBRARY)

if(ENTITYX_INCLUDE_DIR AND ENTITYX_LIBRARY)
	set(ENTITYX_FOUND TRUE)
else()
	set(ENTITYX_FOUND FALSE)
endif()
