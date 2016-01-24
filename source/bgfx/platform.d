module bgfx.platform;

import bgfx.bgfx : TextureHandle, Caps, TextureFormat;
import bgfx.defines : BGFX_TEXTURE_NONE;
import core.stdc.stdint : uintptr_t;

/*
 * Copyright 2011-2016 Branimir Karadzic. All rights reserved.
 * License: https://github.com/bkaradzic/bgfx/blob/master/LICENSE
 */

// NOTICE:
// This header file contains platform specific interfaces. It is only
// necessary to use this header in conjunction with creating windows.

// #include <bx/platform.h>

extern(C++, bgfx)
{
	/// Render frame enum.
	///
	/// @attention C99 equivalent is `bgfx_render_frame_t`.
	///
	struct RenderFrame
	{
		enum Enum
		{
			NoContext,
			Render,
			Exiting,

			Count
		};
	};

	/// Render frame.
	///
	/// @returns Current renderer state. See: `bgfx::RenderFrame`.
	///
	/// @warning This call should be only used on platforms that don't
	///   allow creating separate rendering thread. If it is called before
	///   to bgfx::init, render thread won't be created by bgfx::init call.
	RenderFrame.Enum renderFrame();

	/// Platform data.
	///
	/// @attention C99 equivalent is `bgfx_platform_data_t`.
	///
	struct PlatformData
	{
		void* ndt;          //!< Native display type
		void* nwh;          //!< Native window handle
		void* context;      //!< GL context, or D3D device
		void* backBuffer;   //!< GL backbuffer, or D3D render target view
		void* backBufferDS; //!< Backbuffer depth/stencil.
	}

	/// Set platform data.
	///
	/// @warning Must be called before `bgfx::init`.
	///
	/// @attention C99 equivalent is `bgfx_set_platform_data`.
	///
	void setPlatformData(in ref PlatformData _data);
	
	/// Internal data.
	///
	/// @attention C99 equivalent is `bgfx_internal_data_t`.
	///
	struct InternalData
	{
		const(Caps)* caps;       //!< Renderer capabilities.
		void* context;           //!< GL context, or D3D device.
	}
	
	/// Get internal data for interop.
	///
	/// @attention It's expected you understand some bgfx internals before you
	///   use this call.
	///
	/// @warning Must be called only on render thread.
	///
	/// @attention C99 equivalent is `bgfx_get_internal_data`.
	///
	const(InternalData)* getInternalData();
	
	/// Override internal texture with externally created texture. Previously
	/// created internal texture will released.
	///
	/// @attention It's expected you understand some bgfx internals before you
	///   use this call.
	///
	/// @param[in] _handle Texture handle.
	/// @param[in] _ptr Native API pointer to texture.
	///
	/// @warning Must be called only on render thread.
	///
	/// @attention C99 equivalent is `bgfx_override_internal_texture_ptr`.
	///
	void overrideInternal(TextureHandle _handle, uintptr_t _ptr);
	
	/// Override internal texture by creating new texture. Previously created
	/// internal texture will released.
	///
	/// @attention It's expected you understand some bgfx internals before you
	///   use this call.
	///
	/// @param[in] _handle Texture handle.
	/// @param[in] _width Width.
	/// @param[in] _height Height.
	/// @param[in] _numMips Number of mip-maps.
	/// @param[in] _format Texture format. See: `TextureFormat::Enum`.
	/// @param[in] _flags Default texture sampling mode is linear, and wrap mode
	///   is repeat.
	///   - `BGFX_TEXTURE_[U/V/W]_[MIRROR/CLAMP]` - Mirror or clamp to edge wrap
	///     mode.
	///   - `BGFX_TEXTURE_[MIN/MAG/MIP]_[POINT/ANISOTROPIC]` - Point or anisotropic
	///     sampling.
	///
	/// @returns Native API pointer to texture.
	///
	/// @warning Must be called only on render thread.
	///
	/// @attention C99 equivalent is `bgfx_override_internal_texture`.
	///
	uintptr_t overrideInternal(TextureHandle _handle, ushort _width, ushort _height, ubyte _numMips, TextureFormat.Enum _format, uint _flags = BGFX_TEXTURE_NONE);


// #if BX_PLATFORM_ANDROID
// #	include <android/native_window.h>
version(Android)
{

	///
	void androidSetWindow(ANativeWindow* _window)
	{
		PlatformData pd;
		pd.ndt          = null;
		pd.nwh          = _window;
		pd.context      = null;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

}
// #elif BX_PLATFORM_IOS
else version(IOS)
{

	void iosSetEaglLayer(void* _window)
	{
		PlatformData pd;
		pd.ndt          = null;
		pd.nwh          = _window;
		pd.context      = null;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

}
else version(Posix)
{
// #elif BX_PLATFORM_BSD || BX_PLATFORM_LINUX || BX_PLATFORM_RPI

	///
	void x11SetDisplayWindow(void* _display, uint _window, void* _glx = null)
	{
		import core.stdc.stdint;
		PlatformData pd;
		pd.ndt          = _display;
		pd.nwh          = cast(void*)cast(uintptr_t)_window;
		pd.context      = _glx;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

}
else version(NaCl)
{
// #elif BX_PLATFORM_NACL
// #	include <ppapi/c/ppb_graphics_3d.h>
// #	include <ppapi/c/ppb_instance.h>

static assert(false, "NaCl platform not supported.");
// extern(C++, bgfx)
// {
// 	alias PostSwapBuffersFn = void function(uint _width, uint _height);
// 
// 	///
// 	bool naclSetInterfaces(PP_Instance, const PPB_Instance*, const PPB_Graphics3D*, PostSwapBuffersFn);
// 
// } // extern(C++, bgfx)

}
else version(Darwin)
{
// #elif BX_PLATFORM_OSX

	void osxSetNSWindow(void* _window, void* _nsgl = null)
	{
		PlatformData pd;
		pd.ndt          = null;
		pd.nwh          = _window;
		pd.context      = _nsgl;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

}
else version(Windows)
{
// #elif BX_PLATFORM_WINDOWS
// #	include <windows.h>
	import core.stdc.windows;

	///
	void winSetHwnd(HWND _window)
	{
		PlatformData pd;
		pd.ndt          = null;
		pd.nwh          = _window;
		pd.context      = null;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

}
else version(WinRT)
{
// #elif BX_PLATFORM_WINRT
// #   include <Unknwn.h>

	void winrtSetWindow(IUnknown* _window)
	{
		PlatformData pd;
		pd.ndt          = null;
		pd.nwh          = _window;
		pd.context      = null;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);
	}

// #endif // BX_PLATFORM_
}

version(BgfxSDL2)
{
// #if defined(_SDL_syswm_h)
// If SDL_syswm.h is included before bgfxplatform.h we can enable SDL window
// interop convenience code.
	import derelict.sdl2.sdl;

	bool sdlSetWindow(SDL_Window* _window)
	{
		SDL_SysWMinfo wmi;
		SDL_VERSION(&wmi.version_);
		if (!SDL_GetWindowWMInfo(_window, &wmi) )
		{
			return false;
		}

		PlatformData pd;
		version(Posix)
		{
			import core.stdc.stdint : uintptr_t;
			pd.ndt          = wmi.info.x11.display;
			pd.nwh          = cast(void*)cast(uintptr_t)wmi.info.x11.window;
		}
		else version(Darwin)
		{
			pd.ndt          = null;
			pd.nwh          = wmi.info.cocoa.window;
		}
		else version(Windows)
		{
			pd.ndt          = null;
			pd.nwh          = wmi.info.win.window;
		}
		pd.context      = null;
		pd.backBuffer   = null;
		pd.backBufferDS = null;
		setPlatformData(pd);

		return true;
	}

}

version(BgfxGLFW3)
{
// #elif defined(_glfw3_h_)
// If GLFW/glfw3.h is included before bgfxplatform.h we can enable GLFW3
// window interop convenience code.

// #	if BX_PLATFORM_LINUX || BX_PLATFORM_BSD
// #		define GLFW_EXPOSE_NATIVE_X11
// #		define GLFW_EXPOSE_NATIVE_GLX
// #	elif BX_PLATFORM_OSX
// #		define GLFW_EXPOSE_NATIVE_COCOA
// #		define GLFW_EXPOSE_NATIVE_NSGL
// #	elif BX_PLATFORM_WINDOWS
// #		define GLFW_EXPOSE_NATIVE_WIN32
// #		define GLFW_EXPOSE_NATIVE_WGL
// #	endif //
// #	include <GLFW/glfw3native.h>

// extern(C++, bgfx)
// {
// 	void glfwSetWindow(GLFWwindow* _window)
// 	{
// 		PlatformData pd;
// #	if BX_PLATFORM_LINUX || BX_PLATFORM_BSD
// 		pd.ndt          = glfwGetX11Display();
// 		pd.nwh          = (void*)(uintptr_t)glfwGetX11Window(_window);
// 		pd.context      = glfwGetGLXContext(_window);
// #	elif BX_PLATFORM_OSX
// 		pd.ndt          = null;
// 		pd.nwh          = glfwGetCocoaWindow(_window);
// 		pd.context      = glfwGetNSGLContext(_window);
// #	elif BX_PLATFORM_WINDOWS
// 		pd.ndt          = null;
// 		pd.nwh          = glfwGetWin32Window(_window);
// 		pd.context      = null;
// #	endif // BX_PLATFORM_WINDOWS
// 		pd.backBuffer   = null;
// 		pd.backBufferDS = null;
// 		setPlatformData(pd);
// 	}
// 
// } // extern(C++, bgfx)

}

}
// #endif // defined(_SDL_H)

// #endif // BGFX_PLATFORM_H_HEADER_GUARD