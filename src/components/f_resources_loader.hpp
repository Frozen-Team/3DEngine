#ifndef _3FENGINE_SRC_COMPONENTS_RESOURCES_LOADER_HPP_
#define _3FENGINE_SRC_COMPONENTS_RESOURCES_LOADER_HPP_

#include "fbxsdk.h"

#include "../utils/typedefs.hpp"
#include "../utils/f_singleton.hpp"

namespace FEngine {
	class FResoucresLoader : public Utils::FSingleton<FResoucresLoader>
	{
		F_DISABLE_COPY(FResoucresLoader)
	public:
		~FResoucresLoader() {};
	private:
		FResoucresLoader() {};
	};
}


#endif // _3FENGINE_SRC_COMPONENTS_RESOURCES_LOADER_HPP_

