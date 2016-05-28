module bgfx.defines;

enum uint BGFX_API_VERSION = 14;

///
enum ulong BGFX_STATE_RGB_WRITE             = 0x0000000000000001; //!< Enable RGB write.
enum ulong BGFX_STATE_ALPHA_WRITE           = 0x0000000000000002; //!< Enable alpha write.
enum ulong BGFX_STATE_DEPTH_WRITE           = 0x0000000000000004; //!< Enable depth write.

enum ulong BGFX_STATE_DEPTH_TEST_LESS       = 0x0000000000000010; //!< Enable depth test, less.
enum ulong BGFX_STATE_DEPTH_TEST_LEQUAL     = 0x0000000000000020; //!< Enable depth test, less equal.
enum ulong BGFX_STATE_DEPTH_TEST_EQUAL      = 0x0000000000000030; //!< Enable depth test, equal.
enum ulong BGFX_STATE_DEPTH_TEST_GEQUAL     = 0x0000000000000040; //!< Enable depth test, greater equal.
enum ulong BGFX_STATE_DEPTH_TEST_GREATER    = 0x0000000000000050; //!< Enable depth test, greater.
enum ulong BGFX_STATE_DEPTH_TEST_NOTEQUAL   = 0x0000000000000060; //!< Enable depth test, not equal.
enum ulong BGFX_STATE_DEPTH_TEST_NEVER      = 0x0000000000000070; //!< Enable depth test, never.
enum ulong BGFX_STATE_DEPTH_TEST_ALWAYS     = 0x0000000000000080; //!< Enable depth test, always.
enum BGFX_STATE_DEPTH_TEST_SHIFT      = 4;
enum ulong BGFX_STATE_DEPTH_TEST_MASK       = 0x00000000000000f0; //!< Depth test state bit mask.

enum ulong BGFX_STATE_BLEND_ZERO            = 0x0000000000001000; //!<
enum ulong BGFX_STATE_BLEND_ONE             = 0x0000000000002000; //!<
enum ulong BGFX_STATE_BLEND_SRC_COLOR       = 0x0000000000003000; //!<
enum ulong BGFX_STATE_BLEND_INV_SRC_COLOR   = 0x0000000000004000; //!<
enum ulong BGFX_STATE_BLEND_SRC_ALPHA       = 0x0000000000005000; //!<
enum ulong BGFX_STATE_BLEND_INV_SRC_ALPHA   = 0x0000000000006000; //!<
enum ulong BGFX_STATE_BLEND_DST_ALPHA       = 0x0000000000007000; //!<
enum ulong BGFX_STATE_BLEND_INV_DST_ALPHA   = 0x0000000000008000; //!<
enum ulong BGFX_STATE_BLEND_DST_COLOR       = 0x0000000000009000; //!<
enum ulong BGFX_STATE_BLEND_INV_DST_COLOR   = 0x000000000000a000; //!<
enum ulong BGFX_STATE_BLEND_SRC_ALPHA_SAT   = 0x000000000000b000; //!<
enum ulong BGFX_STATE_BLEND_FACTOR          = 0x000000000000c000; //!<
enum ulong BGFX_STATE_BLEND_INV_FACTOR      = 0x000000000000d000; //!<
enum BGFX_STATE_BLEND_SHIFT           = 12;                 //!< Blend state bit shift.
enum ulong BGFX_STATE_BLEND_MASK            = 0x000000000ffff000; //!< Blend state bit mask.

enum ulong BGFX_STATE_BLEND_EQUATION_ADD    = 0x0000000000000000; //!<
enum ulong BGFX_STATE_BLEND_EQUATION_SUB    = 0x0000000010000000; //!<
enum ulong BGFX_STATE_BLEND_EQUATION_REVSUB = 0x0000000020000000; //!<
enum ulong BGFX_STATE_BLEND_EQUATION_MIN    = 0x0000000030000000; //!<
enum ulong BGFX_STATE_BLEND_EQUATION_MAX    = 0x0000000040000000; //!<
enum BGFX_STATE_BLEND_EQUATION_SHIFT  = 28;                 //!< Blend equation bit shift.
enum ulong BGFX_STATE_BLEND_EQUATION_MASK   = 0x00000003f0000000; //!< Blend equation bit mask.

enum ulong BGFX_STATE_BLEND_INDEPENDENT     = 0x0000000400000000; //!< Enable blend independent.

enum ulong BGFX_STATE_CULL_CW               = 0x0000001000000000; //!< Cull clockwise triangles.
enum ulong BGFX_STATE_CULL_CCW              = 0x0000002000000000; //!< Cull counter-clockwise triangles.
enum BGFX_STATE_CULL_SHIFT            = 36;                 //!< Culling mode bit shift.
enum ulong BGFX_STATE_CULL_MASK             = 0x0000003000000000; //!< Culling mode bit mask.

/// See BGFX_STATE_ALPHA_REF(_ref) helper macro.
enum BGFX_STATE_ALPHA_REF_SHIFT       = 40;                 //!< Alpha reference bit shift.
enum ulong BGFX_STATE_ALPHA_REF_MASK        = 0x0000ff0000000000; //!< Alpha reference bit mask.

enum ulong BGFX_STATE_PT_TRISTRIP           = 0x0001000000000000; //!< Tristrip.
enum ulong BGFX_STATE_PT_LINES              = 0x0002000000000000; //!< Lines.
enum ulong BGFX_STATE_PT_LINESTRIP          = 0x0003000000000000; //!< Line strip.
enum ulong BGFX_STATE_PT_POINTS             = 0x0004000000000000; //!< Points.
enum BGFX_STATE_PT_SHIFT              = 48;                 //!< Primitive type bit shift.
enum ulong BGFX_STATE_PT_MASK               = 0x0007000000000000; //!< Primitive type bit mask.

enum BGFX_STATE_POINT_SIZE_SHIFT            = 52;                 //!< Point size bit shift.
enum ulong BGFX_STATE_POINT_SIZE_MASK       = 0x0ff0000000000000; //!< Point size bit mask.

/// Enable MSAA write when writing into MSAA frame buffer. This flag is ignored when not writing into
/// MSAA frame buffer.
enum ulong BGFX_STATE_MSAA                  = 0x1000000000000000; //!< Enable MSAA rasterization.
enum ulong BGFX_STATE_LINEAA                = 0x0200000000000000; //!< Enable line AA rasterization.
enum ulong BGFX_STATE_CONSERVATIVE_RASTER   = 0x0400000000000000; //!< Enable conservative rasterization.

/// Do not use!
enum BGFX_STATE_RESERVED_SHIFT              = 61;                 //!< Internal bits shift.
enum ulong BGFX_STATE_RESERVED_MASK         = 0xe000000000000000; //!< Internal bits mask.

/// See BGFX_STATE_POINT_SIZE(_size) helper macro.
enum ulong BGFX_STATE_NONE                  = 0x0000000000000000; //!< No state.
enum ulong BGFX_STATE_MASK                  = 0xffffffffffffffff; //!< State mask.

/// Default state is write to RGB, alpha, and depth with depth test less enabled, with clockwise
/// culling and MSAA (when writing into MSAA frame buffer, otherwise this flag is ignored).
enum BGFX_STATE_DEFAULT = 0
					| BGFX_STATE_RGB_WRITE
					| BGFX_STATE_ALPHA_WRITE
					| BGFX_STATE_DEPTH_TEST_LESS
					| BGFX_STATE_DEPTH_WRITE
					| BGFX_STATE_CULL_CW
					| BGFX_STATE_MSAA;

// enum BGFX_STATE_ALPHA_REF(_ref)   ( ( (uint64_t)(_ref )<<BGFX_STATE_ALPHA_REF_SHIFT )&BGFX_STATE_ALPHA_REF_MASK)
auto BGFX_STATE_ALPHA_REF(ulong _ref) { return (_ref << BGFX_STATE_ALPHA_REF_SHIFT) & BGFX_STATE_ALPHA_REF_MASK; }
// enum BGFX_STATE_POINT_SIZE(_size) ( ( (uint64_t)(_size)<<BGFX_STATE_POINT_SIZE_SHIFT)&BGFX_STATE_POINT_SIZE_MASK)
auto BGFX_STATE_POINT_SIZE(ulong _size) { return (_size << BGFX_STATE_POINT_SIZE_SHIFT) & BGFX_STATE_POINT_SIZE_MASK; }

///
// enum BGFX_STATE_BLEND_FUNC_SEPARATE(_srcRGB, _dstRGB, _srcA, _dstA) (UINT64_C(0) \
// 					| ( ( (uint64_t)(_srcRGB)|( (uint64_t)(_dstRGB)<<4) )   ) \
// 					| ( ( (uint64_t)(_srcA  )|( (uint64_t)(_dstA  )<<4) )<<8) \
// 					)
auto BGFX_STATE_BLEND_FUNC_SEPARATE(ulong _srcRGB, ulong _dstRGB, ulong _srcA, ulong _dstA)
{
	return (_srcRGB | (_dstRGB << 4)) | ((_srcA | (_dstA << 4)) << 8);
}

// enum BGFX_STATE_BLEND_EQUATION_SEPARATE(_rgb, _a) ( (uint64_t)(_rgb)|( (uint64_t)(_a)<<3) )
auto BGFX_STATE_BLEND_EQUATION_SEPARATE(ulong _rgb, ulong _a) { return _rgb | (_a << 3); }

///
// enum BGFX_STATE_BLEND_FUNC(_src, _dst)    BGFX_STATE_BLEND_FUNC_SEPARATE(_src, _dst, _src, _dst)
auto BGFX_STATE_BLEND_FUNC(ulong _src, ulong _dst) { return BGFX_STATE_BLEND_FUNC_SEPARATE(_src, _dst, _src, _dst); }
// enum BGFX_STATE_BLEND_EQUATION(_equation) BGFX_STATE_BLEND_EQUATION_SEPARATE(_equation, _equation)
auto BGFX_STATE_BLEND_EQUATION(ulong _equation) { return BGFX_STATE_BLEND_EQUATION_SEPARATE(_equation, _equation); }

enum BGFX_STATE_BLEND_ADD         = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE,       BGFX_STATE_BLEND_ONE          );
enum BGFX_STATE_BLEND_ALPHA       = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_SRC_ALPHA, BGFX_STATE_BLEND_INV_SRC_ALPHA);
enum BGFX_STATE_BLEND_DARKEN      = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE,       BGFX_STATE_BLEND_ONE          ) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MIN);
enum BGFX_STATE_BLEND_LIGHTEN     = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE,       BGFX_STATE_BLEND_ONE          ) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_MAX);
enum BGFX_STATE_BLEND_MULTIPLY    = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_ZERO         );
enum BGFX_STATE_BLEND_NORMAL      = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE,       BGFX_STATE_BLEND_INV_SRC_ALPHA);
enum BGFX_STATE_BLEND_SCREEN      = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE,       BGFX_STATE_BLEND_INV_SRC_COLOR);
enum BGFX_STATE_BLEND_LINEAR_BURN = BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_DST_COLOR, BGFX_STATE_BLEND_INV_DST_COLOR) | BGFX_STATE_BLEND_EQUATION(BGFX_STATE_BLEND_EQUATION_SUB);

///
// enum BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) (0 \
// 					| ( uint32_t( (_src)>>BGFX_STATE_BLEND_SHIFT) \
// 					| ( uint32_t( (_dst)>>BGFX_STATE_BLEND_SHIFT)<<4) ) \
// 					)
auto BGFX_STATE_BLEND_FUNC_RT_x(uint _src, uint _dst) { return (_src >> BGFX_STATE_BLEND_SHIFT) | ((_dst >> BGFX_STATE_BLEND_SHIFT) << 4); }

// enum BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) (0 \
// 					| BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) \
// 					| ( uint32_t( (_equation)>>BGFX_STATE_BLEND_EQUATION_SHIFT)<<8) \
// 					)
auto BGFX_STATE_BLEND_FUNC_RT_xE(uint _src, uint _dst, uint _equation)
{
	return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) | ((_equation >> BGFX_STATE_BLEND_EQUATION_SHIFT) << 8);
}

// enum BGFX_STATE_BLEND_FUNC_RT_1(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<< 0)
auto BGFX_STATE_BLEND_FUNC_RT_1(uint _src, uint _dst) { return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << 0; }
// enum BGFX_STATE_BLEND_FUNC_RT_2(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<<11)
auto BGFX_STATE_BLEND_FUNC_RT_2(uint _src, uint _dst) { return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << 11; }
// enum BGFX_STATE_BLEND_FUNC_RT_3(_src, _dst)  (BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst)<<22)
auto BGFX_STATE_BLEND_FUNC_RT_3(uint _src, uint _dst) { return BGFX_STATE_BLEND_FUNC_RT_x(_src, _dst) << 22; }

// enum BGFX_STATE_BLEND_FUNC_RT_1E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<< 0)
auto BGFX_STATE_BLEND_FUNC_RT_1E(uint _src, uint _dst, uint _equation) { return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << 0; }
// enum BGFX_STATE_BLEND_FUNC_RT_2E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<<11)
auto BGFX_STATE_BLEND_FUNC_RT_2E(uint _src, uint _dst, uint _equation) { return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << 11; }
// enum BGFX_STATE_BLEND_FUNC_RT_3E(_src, _dst, _equation) (BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation)<<22)
auto BGFX_STATE_BLEND_FUNC_RT_3E(uint _src, uint _dst, uint _equation) { return BGFX_STATE_BLEND_FUNC_RT_xE(_src, _dst, _equation) << 22; }

///
enum BGFX_STENCIL_FUNC_REF_SHIFT      = 0;                    //!<
enum uint BGFX_STENCIL_FUNC_REF_MASK       = 0x000000ff; //!<
enum BGFX_STENCIL_FUNC_RMASK_SHIFT    = 8;                    //!<
enum uint BGFX_STENCIL_FUNC_RMASK_MASK     = 0x0000ff00; //!<

enum uint BGFX_STENCIL_TEST_LESS           = 0x00010000; //!< Enable stencil test, less.
enum uint BGFX_STENCIL_TEST_LEQUAL         = 0x00020000; //!<
enum uint BGFX_STENCIL_TEST_EQUAL          = 0x00030000; //!<
enum uint BGFX_STENCIL_TEST_GEQUAL         = 0x00040000; //!<
enum uint BGFX_STENCIL_TEST_GREATER        = 0x00050000; //!<
enum uint BGFX_STENCIL_TEST_NOTEQUAL       = 0x00060000; //!<
enum uint BGFX_STENCIL_TEST_NEVER          = 0x00070000; //!<
enum uint BGFX_STENCIL_TEST_ALWAYS         = 0x00080000; //!<
enum BGFX_STENCIL_TEST_SHIFT          = 16;                   //!<
enum uint BGFX_STENCIL_TEST_MASK           = 0x000f0000; //!<

enum uint BGFX_STENCIL_OP_FAIL_S_ZERO      = 0x00000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_KEEP      = 0x00100000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_REPLACE   = 0x00200000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_INCR      = 0x00300000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_INCRSAT   = 0x00400000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_DECR      = 0x00500000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_DECRSAT   = 0x00600000; //!<
enum uint BGFX_STENCIL_OP_FAIL_S_INVERT    = 0x00700000; //!<
enum BGFX_STENCIL_OP_FAIL_S_SHIFT     = 20;                   //!<
enum uint BGFX_STENCIL_OP_FAIL_S_MASK      = 0x00f00000; //!<

enum uint BGFX_STENCIL_OP_FAIL_Z_ZERO      = 0x00000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_KEEP      = 0x01000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_REPLACE   = 0x02000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_INCR      = 0x03000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_INCRSAT   = 0x04000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_DECR      = 0x05000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_DECRSAT   = 0x06000000; //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_INVERT    = 0x07000000; //!<
enum BGFX_STENCIL_OP_FAIL_Z_SHIFT     = 24;                   //!<
enum uint BGFX_STENCIL_OP_FAIL_Z_MASK      = 0x0f000000; //!<

enum uint BGFX_STENCIL_OP_PASS_Z_ZERO      = 0x00000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_KEEP      = 0x10000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_REPLACE   = 0x20000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_INCR      = 0x30000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_INCRSAT   = 0x40000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_DECR      = 0x50000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_DECRSAT   = 0x60000000; //!<
enum uint BGFX_STENCIL_OP_PASS_Z_INVERT    = 0x70000000; //!<
enum BGFX_STENCIL_OP_PASS_Z_SHIFT     = 28;                   //!<
enum uint BGFX_STENCIL_OP_PASS_Z_MASK      = 0xf0000000; //!<

enum uint BGFX_STENCIL_NONE                = 0x00000000; //!<
enum uint BGFX_STENCIL_MASK                = 0xffffffff; //!<
enum uint BGFX_STENCIL_DEFAULT             = 0x00000000; //!<

/// Set stencil ref value.
// enum BGFX_STENCIL_FUNC_REF(_ref) ( (uint32_t(_ref)<<BGFX_STENCIL_FUNC_REF_SHIFT)&BGFX_STENCIL_FUNC_REF_MASK)
auto BGFX_STENCIL_FUNC_REF(uint _ref) { return (_ref << BGFX_STENCIL_FUNC_REF_SHIFT) & BGFX_STENCIL_FUNC_REF_MASK; }

/// Set stencil rmask value.
// enum BGFX_STENCIL_FUNC_RMASK(_mask) ( (uint32_t(_mask)<<BGFX_STENCIL_FUNC_RMASK_SHIFT)&BGFX_STENCIL_FUNC_RMASK_MASK)
auto BGFX_STENCIL_FUNC_RMASK(uint _mask) { return (_mask << BGFX_STENCIL_FUNC_RMASK_SHIFT) & BGFX_STENCIL_FUNC_RMASK_MASK; }

///
enum ushort BGFX_CLEAR_NONE                  = 0x0000; //!< No clear flags.
enum ushort BGFX_CLEAR_COLOR                 = 0x0001; //!< Clear color.
enum ushort BGFX_CLEAR_DEPTH                 = 0x0002; //!< Clear depth.
enum ushort BGFX_CLEAR_STENCIL               = 0x0004; //!< Clear stencil.
enum ushort BGFX_CLEAR_DISCARD_COLOR_0       = 0x0008; //!< Discard frame buffer attachment 0.
enum ushort BGFX_CLEAR_DISCARD_COLOR_1       = 0x0010; //!< Discard frame buffer attachment 1.
enum ushort BGFX_CLEAR_DISCARD_COLOR_2       = 0x0020; //!< Discard frame buffer attachment 2.
enum ushort BGFX_CLEAR_DISCARD_COLOR_3       = 0x0040; //!< Discard frame buffer attachment 3.
enum ushort BGFX_CLEAR_DISCARD_COLOR_4       = 0x0080; //!< Discard frame buffer attachment 4.
enum ushort BGFX_CLEAR_DISCARD_COLOR_5       = 0x0100; //!< Discard frame buffer attachment 5.
enum ushort BGFX_CLEAR_DISCARD_COLOR_6       = 0x0200; //!< Discard frame buffer attachment 6.
enum ushort BGFX_CLEAR_DISCARD_COLOR_7       = 0x0400; //!< Discard frame buffer attachment 7.
enum ushort BGFX_CLEAR_DISCARD_DEPTH         = 0x0800; //!< Discard frame buffer depth attachment.
enum ushort BGFX_CLEAR_DISCARD_STENCIL       = 0x1000; //!< Discard frame buffer stencil attachment.

enum BGFX_CLEAR_DISCARD_COLOR_MASK = 0
			| BGFX_CLEAR_DISCARD_COLOR_0
			| BGFX_CLEAR_DISCARD_COLOR_1
			| BGFX_CLEAR_DISCARD_COLOR_2
			| BGFX_CLEAR_DISCARD_COLOR_3
			| BGFX_CLEAR_DISCARD_COLOR_4
			| BGFX_CLEAR_DISCARD_COLOR_5
			| BGFX_CLEAR_DISCARD_COLOR_6
			| BGFX_CLEAR_DISCARD_COLOR_7;
			
enum BGFX_CLEAR_DISCARD_MASK = 0
			| BGFX_CLEAR_DISCARD_COLOR_MASK
			| BGFX_CLEAR_DISCARD_DEPTH
			| BGFX_CLEAR_DISCARD_STENCIL;

enum uint BGFX_DEBUG_NONE                  = 0x00000000; //!< No debug.
enum uint BGFX_DEBUG_WIREFRAME             = 0x00000001; //!< Enable wireframe for all primitives.
enum uint BGFX_DEBUG_IFH                   = 0x00000002; //!< Enable infinitely fast hardware test. No draw calls will be submitted to driver. It’s useful when profiling to quickly assess bottleneck between CPU and GPU.
enum uint BGFX_DEBUG_STATS                 = 0x00000004; //!< Enable statistics display.
enum uint BGFX_DEBUG_TEXT                  = 0x00000008; //!< Enable debug text display.

///
enum ushort BGFX_BUFFER_NONE                 = 0x0000; //!<

enum ushort BGFX_BUFFER_COMPUTE_FORMAT_8x1   = 0x0001; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_8x2   = 0x0002; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_8x4   = 0x0003; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_16x1  = 0x0004; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_16x2  = 0x0005; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_16x4  = 0x0006; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_32x1  = 0x0007; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_32x2  = 0x0008; //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_32x4  = 0x0009; //!<
enum BGFX_BUFFER_COMPUTE_FORMAT_SHIFT = 0;                //!<
enum ushort BGFX_BUFFER_COMPUTE_FORMAT_MASK  = 0x000f; //!<

enum ushort BGFX_BUFFER_COMPUTE_TYPE_UINT    = 0x0010; //!<
enum ushort BGFX_BUFFER_COMPUTE_TYPE_INT     = 0x0020; //!<
enum ushort BGFX_BUFFER_COMPUTE_TYPE_FLOAT   = 0x0030; //!<
enum BGFX_BUFFER_COMPUTE_TYPE_SHIFT   = 4;                //!<
enum ushort BGFX_BUFFER_COMPUTE_TYPE_MASK    = 0x0030; //!<

enum ushort BGFX_BUFFER_COMPUTE_READ         = 0x0100; //!< Buffer will be read by shader.
enum ushort BGFX_BUFFER_COMPUTE_WRITE        = 0x0200; //!< Buffer will be used for writing.
enum ushort BGFX_BUFFER_DRAW_INDIRECT        = 0x0400; //!< Buffer will be used for storing draw indirect commands.
enum ushort BGFX_BUFFER_ALLOW_RESIZE         = 0x0800; //!<
enum ushort BGFX_BUFFER_INDEX32              = 0x1000; //!<

enum BGFX_BUFFER_COMPUTE_READ_WRITE = 0
			| BGFX_BUFFER_COMPUTE_READ
			| BGFX_BUFFER_COMPUTE_WRITE;

///
enum uint BGFX_TEXTURE_NONE                = 0x00000000; //!<
enum uint BGFX_TEXTURE_U_MIRROR            = 0x00000001; //!<
enum uint BGFX_TEXTURE_U_CLAMP             = 0x00000002; //!<
enum uint BGFX_TEXTURE_U_BORDER            = 0x00000003; //!<
enum BGFX_TEXTURE_U_SHIFT             = 0;                    //!<
enum uint BGFX_TEXTURE_U_MASK              = 0x00000003; //!<
enum uint BGFX_TEXTURE_V_MIRROR            = 0x00000004; //!<
enum uint BGFX_TEXTURE_V_CLAMP             = 0x00000008; //!<
enum uint BGFX_TEXTURE_V_BORDER            = 0x0000000c; //!<
enum BGFX_TEXTURE_V_SHIFT             = 2;                    //!<
enum uint BGFX_TEXTURE_V_MASK              = 0x0000000c; //!<
enum uint BGFX_TEXTURE_W_MIRROR            = 0x00000010; //!<
enum uint BGFX_TEXTURE_W_CLAMP             = 0x00000020; //!<
enum uint BGFX_TEXTURE_W_BORDER            = 0x00000030; //!<
enum BGFX_TEXTURE_W_SHIFT             = 4;                    //!<
enum uint BGFX_TEXTURE_W_MASK              = 0x00000030; //!<
enum uint BGFX_TEXTURE_MIN_POINT           = 0x00000040; //!<
enum uint BGFX_TEXTURE_MIN_ANISOTROPIC     = 0x00000080; //!<
enum BGFX_TEXTURE_MIN_SHIFT           = 6;                   //!<
enum uint BGFX_TEXTURE_MIN_MASK            = 0x000000c0; //!<
enum uint BGFX_TEXTURE_MAG_POINT           = 0x00000100; //!<
enum uint BGFX_TEXTURE_MAG_ANISOTROPIC     = 0x00000200; //!<
enum BGFX_TEXTURE_MAG_SHIFT           = 8;                    //!<
enum uint BGFX_TEXTURE_MAG_MASK            = 0x00000300; //!<
enum uint BGFX_TEXTURE_MIP_POINT           = 0x00000400; //!<
enum BGFX_TEXTURE_MIP_SHIFT           = 10;                   //!<
enum uint BGFX_TEXTURE_MIP_MASK            = 0x00000400; //!<
enum uint BGFX_TEXTURE_MSAA_SAMPLE         = 0x00000800; //!<
enum uint BGFX_TEXTURE_RT                  = 0x00001000; //!<
enum uint BGFX_TEXTURE_RT_MSAA_X2          = 0x00002000; //!<
enum uint BGFX_TEXTURE_RT_MSAA_X4          = 0x00003000; //!<
enum uint BGFX_TEXTURE_RT_MSAA_X8          = 0x00004000; //!<
enum uint BGFX_TEXTURE_RT_MSAA_X16         = 0x00005000; //!<
enum BGFX_TEXTURE_RT_MSAA_SHIFT       = 12;                   //!<
enum uint BGFX_TEXTURE_RT_MSAA_MASK        = 0x00007000; //!<
enum uint BGFX_TEXTURE_RT_WRITE            = 0x00008000; //!<
enum uint BGFX_TEXTURE_RT_MASK             = 0x0000f000; //!<
enum uint BGFX_TEXTURE_COMPARE_LESS        = 0x00010000; //!<
enum uint BGFX_TEXTURE_COMPARE_LEQUAL      = 0x00020000; //!<
enum uint BGFX_TEXTURE_COMPARE_EQUAL       = 0x00030000; //!<
enum uint BGFX_TEXTURE_COMPARE_GEQUAL      = 0x00040000; //!<
enum uint BGFX_TEXTURE_COMPARE_GREATER     = 0x00050000; //!<
enum uint BGFX_TEXTURE_COMPARE_NOTEQUAL    = 0x00060000; //!<
enum uint BGFX_TEXTURE_COMPARE_NEVER       = 0x00070000; //!<
enum uint BGFX_TEXTURE_COMPARE_ALWAYS      = 0x00080000; //!<
enum BGFX_TEXTURE_COMPARE_SHIFT       = 16;                   //!<
enum uint BGFX_TEXTURE_COMPARE_MASK        = 0x000f0000; //!<
enum uint BGFX_TEXTURE_COMPUTE_WRITE       = 0x00100000; //!<
enum uint BGFX_TEXTURE_SRGB                = 0x00200000; //!<
enum uint BGFX_TEXTURE_BLIT_DST            = 0x00400000; //!<
enum uint BGFX_TEXTURE_READ_BACK           = 0x00800000; //!<
enum BGFX_TEXTURE_BORDER_COLOR_SHIFT  = 24;                   //!<
enum uint BGFX_TEXTURE_BORDER_COLOR_MASK   = 0x0f000000; //!<
enum BGFX_TEXTURE_RESERVED_SHIFT      = 28;                   //!<
enum uint BGFX_TEXTURE_RESERVED_MASK       = 0xf0000000; //!<

// enum BGFX_TEXTURE_BORDER_COLOR(_index) ( (_index << BGFX_TEXTURE_BORDER_COLOR_SHIFT) & BGFX_TEXTURE_BORDER_COLOR_MASK)
auto BGFX_TEXTURE_BORDER_COLOR(uint _index) { return (_index << BGFX_TEXTURE_BORDER_COLOR_SHIFT) & BGFX_TEXTURE_BORDER_COLOR_MASK; }

enum BGFX_TEXTURE_SAMPLER_BITS_MASK = 0
			| BGFX_TEXTURE_U_MASK
			| BGFX_TEXTURE_V_MASK
			| BGFX_TEXTURE_W_MASK
			| BGFX_TEXTURE_MIN_MASK
			| BGFX_TEXTURE_MAG_MASK
			| BGFX_TEXTURE_MIP_MASK
			| BGFX_TEXTURE_COMPARE_MASK;

///
enum uint BGFX_RESET_NONE                  = 0x00000000; //!< No reset flags.
enum uint BGFX_RESET_FULLSCREEN            = 0x00000001; //!< Not supported yet.
enum BGFX_RESET_FULLSCREEN_SHIFT      = 0;                    //!< Fullscreen bit shift.
enum uint BGFX_RESET_FULLSCREEN_MASK       = 0x00000001; //!< Fullscreen bit mask.
enum uint BGFX_RESET_MSAA_X2               = 0x00000010; //!< Enable 2x MSAA.
enum uint BGFX_RESET_MSAA_X4               = 0x00000020; //!< Enable 4x MSAA.
enum uint BGFX_RESET_MSAA_X8               = 0x00000030; //!< Enable 8x MSAA.
enum uint BGFX_RESET_MSAA_X16              = 0x00000040; //!< Enable 16x MSAA.
enum BGFX_RESET_MSAA_SHIFT            = 4;                    //!< MSAA mode bit shift.
enum uint BGFX_RESET_MSAA_MASK             = 0x00000070; //!< MSAA mode bit mask.
enum uint BGFX_RESET_VSYNC                 = 0x00000080; //!< Enable V-Sync.
enum uint BGFX_RESET_MAXANISOTROPY         = 0x00000100; //!< Turn on/off max anisotropy.
enum uint BGFX_RESET_CAPTURE               = 0x00000200; //!< Begin screen capture.
enum uint BGFX_RESET_HMD                   = 0x00000400; //!< HMD stereo rendering.
enum uint BGFX_RESET_HMD_DEBUG             = 0x00000800; //!< HMD stereo rendering debug mode.
enum uint BGFX_RESET_HMD_RECENTER          = 0x00001000; //!< HMD calibration.
enum uint BGFX_RESET_FLUSH_AFTER_RENDER    = 0x00002000; //!< Flush rendering after submitting to GPU.
enum uint BGFX_RESET_FLIP_AFTER_RENDER     = 0x00004000; //!< This flag  specifies where flip occurs. Default behavior is that flip occurs before rendering new frame. This flag only has effect when `BGFX_CONFIG_MULTITHREADED=0`.
enum uint BGFX_RESET_SRGB_BACKBUFFER       = 0x00008000; //!< Enable sRGB backbuffer.
enum uint BGFX_RESET_HIDPI                 = 0x00010000; //!< Enable HiDPI rendering.
enum uint BGFX_RESET_DEPTH_CLAMP           = 0x00020000; //!< Enable depth clamp.
enum uint BGFX_RESET_SUSPEND               = 0x00040000; //!< Suspend rendering.

enum BGFX_RESET_RESERVED_SHIFT        = 31;                   //!< Internal bits shift.
enum uint BGFX_RESET_RESERVED_MASK         = 0x80000000; //!< Internal bits mask.

///
enum ulong BGFX_CAPS_TEXTURE_COMPARE_LEQUAL = 0x0000000000000001; //!< Texture compare less equal mode is supported.
enum ulong BGFX_CAPS_TEXTURE_COMPARE_ALL    = 0x0000000000000003; //!< All texture compare modes are supported.
enum ulong BGFX_CAPS_TEXTURE_3D             = 0x0000000000000004; //!< 3D textures are supported.
enum ulong BGFX_CAPS_VERTEX_ATTRIB_HALF     = 0x0000000000000008; //!< Vertex attribute half-float is supported.
enum ulong BGFX_CAPS_VERTEX_ATTRIB_UINT10   = 0x0000000000000010; //!< Vertex attribute 10_10_10_2 is supported.
enum ulong BGFX_CAPS_INSTANCING             = 0x0000000000000020; //!< Instancing is supported.
enum ulong BGFX_CAPS_RENDERER_MULTITHREADED = 0x0000000000000040; //!< Renderer is on separate thread.
enum ulong BGFX_CAPS_FRAGMENT_DEPTH         = 0x0000000000000080; //!< Fragment depth is accessible in fragment shader.
enum ulong BGFX_CAPS_BLEND_INDEPENDENT      = 0x0000000000000100; //!< Blend independent is supported.
enum ulong BGFX_CAPS_COMPUTE                = 0x0000000000000200; //!< Compute shaders are supported.
enum ulong BGFX_CAPS_FRAGMENT_ORDERING      = 0x0000000000000400; //!< Fragment ordering is available in fragment shader.
enum ulong BGFX_CAPS_SWAP_CHAIN             = 0x0000000000000800; //!< Multiple windows are supported.
enum ulong BGFX_CAPS_HMD                    = 0x0000000000001000; //!< Head Mounted Display is available.
enum ulong BGFX_CAPS_INDEX32                = 0x0000000000002000; //!< 32-bit indices are supported.
enum ulong BGFX_CAPS_DRAW_INDIRECT          = 0x0000000000004000; //!< Draw indirect is supported.
enum ulong BGFX_CAPS_HIDPI                  = 0x0000000000008000; //!< HiDPI rendering is supported.
enum ulong BGFX_CAPS_TEXTURE_BLIT           = 0x0000000000010000; //!< Texture blit is supported.
enum ulong BGFX_CAPS_TEXTURE_READ_BACK      = 0x0000000000020000; //!< Read-back texture is supported.
enum ulong BGFX_CAPS_OCCLUSION_QUERY        = 0x0000000000040000; //!< Occlusion query is supported.
enum ulong BGFX_CAPS_ALPHA_TO_COVERAGE      = 0x0000000000080000; //!< Alpha to coverage is supported.
enum ulong BGFX_CAPS_CONSERVATIVE_RASTER    = 0x0000000000100000; //!< Conservative rasterization is supported.

///
enum ushort BGFX_CAPS_FORMAT_TEXTURE_NONE             = 0x0000; //!< Texture format is not supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_2D               = 0x0001; //!< Texture format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_2D_SRGB          = 0x0002; //!< Texture as sRGB format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_2D_EMULATED      = 0x0004; //!< Texture format is emulated.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_3D               = 0x0008; //!< Texture format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_3D_SRGB          = 0x0010; //!< Texture as sRGB format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_3D_EMULATED      = 0x0020; //!< Texture format is emulated.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_CUBE             = 0x0040; //!< Texture format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_CUBE_SRGB        = 0x0080; //!< Texture as sRGB format is supported.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_CUBE_EMULATED    = 0x0100; //!< Texture format is emulated.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_VERTEX           = 0x0200; //!< Texture format can be used from vertex shader.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_IMAGE            = 0x0400; //!< Texture format can be used as image from compute shader.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER      = 0x0800; //!< Texture format can be used as frame buffer.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_FRAMEBUFFER_MSAA = 0x1000; //!< Texture format can be used as MSAA frame buffer.
enum ushort BGFX_CAPS_FORMAT_TEXTURE_MSAA             = 0x2000; //!< Texture can be sampled as MSAA.

///
enum ubyte BGFX_VIEW_NONE   = 0x00; //!<
enum ubyte BGFX_VIEW_STEREO = 0x01; //!< View will be rendered in stereo mode.

///
enum ubyte BGFX_SUBMIT_EYE_LEFT       = 0x01; //!< Submit to left eye.
enum ubyte BGFX_SUBMIT_EYE_RIGHT      = 0x02; //!< Submit to right eye.
enum ubyte BGFX_SUBMIT_EYE_MASK       = 0x03; //!<
enum BGFX_SUBMIT_EYE_FIRST      = BGFX_SUBMIT_EYE_LEFT;

enum BGFX_SUBMIT_RESERVED_SHIFT = 7;             //!< Internal bits shift.
enum ubyte BGFX_SUBMIT_RESERVED_MASK  = 0x80; //!< Internal bits mask.

///
enum ushort BGFX_PCI_ID_NONE                = 0x0000; //!< Autoselect adapter.
enum ushort BGFX_PCI_ID_SOFTWARE_RASTERIZER = 0x0001; //!< Software rasterizer.
enum ushort BGFX_PCI_ID_AMD                 = 0x1002; //!< AMD adapter.
enum ushort BGFX_PCI_ID_INTEL               = 0x8086; //!< Intel adapter.
enum ushort BGFX_PCI_ID_NVIDIA              = 0x10de; //!< nVidia adapter.

///
enum ubyte BGFX_HMD_NONE              = 0x00; //!< None.
enum ubyte BGFX_HMD_DEVICE_RESOLUTION = 0x01; //!< Has HMD native resolution.
enum ubyte BGFX_HMD_RENDERING         = 0x02; //!< Rendering to HMD.

///
enum ubyte BGFX_CUBE_MAP_POSITIVE_X = 0x00; //!< Cubemap +x.
enum ubyte BGFX_CUBE_MAP_NEGATIVE_X = 0x01; //!< Cubemap -x.
enum ubyte BGFX_CUBE_MAP_POSITIVE_Y = 0x02; //!< Cubemap +y.
enum ubyte BGFX_CUBE_MAP_NEGATIVE_Y = 0x03; //!< Cubemap -y.
enum ubyte BGFX_CUBE_MAP_POSITIVE_Z = 0x04; //!< Cubemap +z.
enum ubyte BGFX_CUBE_MAP_NEGATIVE_Z = 0x05; //!< Cubemap -z.
