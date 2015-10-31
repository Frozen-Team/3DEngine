#ifndef FBX2FSEQ_SRC_CORE_FBX_LOADER_HPP_
#define FBX2FSEQ_SRC_CORE_FBX_LOADER_HPP_

#include "fbxsdk.h"
#include "fbxsdk/fileio/fbxiosettings.h"
#include <string>
#include <memory>

#include "utils/f_typedefs.hpp"
#include "components/f_logger.hpp"

class FFbxLoader 
{
	F_DISABLE_COPY(FFbxLoader)
public:
	F_DEFAULT_CTOR_DTOR(FFbxLoader)

public:
	static inline FbxManager* fbx_manager() noexcept { return fbx_manager_; }
	static inline FbxIOSettings* fbx_io_settings() { return fbx_io_settings_; }
	static inline FbxImporter* fbx_importer() { return fbx_importer_; }

private:

private:
	static FbxManager* fbx_manager_;
	static FbxIOSettings* fbx_io_settings_;
	static FbxImporter* fbx_importer_;
};
#endif // FBX2FSEQ_SRC_CORE_FBX_LOADER_HPP_
