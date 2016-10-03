# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node
DEFS_Debug := \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DNODE_HAVE_SMALL_ICU=1' \
	'-DHAVE_INSPECTOR=1' \
	'-DV8_INSPECTOR_USE_STL=1' \
	'-DV8_INSPECTOR_USE_OLD_STL=1' \
	'-DHAVE_OPENSSL=1' \
	'-D__POSIX__' \
	'-DUCONFIG_NO_TRANSLITERATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=0' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DUCONFIG_NO_LEGACY_CONVERSION=1' \
	'-DUCONFIG_NO_CONVERSION=1' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/uv/src/ares \
	-I$(obj)/gen \
	-I$(srcdir)/deps/v8_inspector/third_party/v8_inspector \
	-I$(obj)/gen/blink \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include

DEFS_Release := \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DNODE_HAVE_SMALL_ICU=1' \
	'-DHAVE_INSPECTOR=1' \
	'-DV8_INSPECTOR_USE_STL=1' \
	'-DV8_INSPECTOR_USE_OLD_STL=1' \
	'-DHAVE_OPENSSL=1' \
	'-D__POSIX__' \
	'-DUCONFIG_NO_TRANSLITERATION=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=0' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DUCONFIG_NO_LEGACY_CONVERSION=1' \
	'-DUCONFIG_NO_CONVERSION=1' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I$(srcdir)/src \
	-I$(srcdir)/tools/msvs/genfiles \
	-I$(srcdir)/deps/uv/src/ares \
	-I$(obj)/gen \
	-I$(srcdir)/deps/v8_inspector/third_party/v8_inspector \
	-I$(obj)/gen/blink \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/openssl/openssl/include \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include

OBJS := \
	$(obj).target/$(TARGET)/src/debug-agent.o \
	$(obj).target/$(TARGET)/src/async-wrap.o \
	$(obj).target/$(TARGET)/src/env.o \
	$(obj).target/$(TARGET)/src/fs_event_wrap.o \
	$(obj).target/$(TARGET)/src/cares_wrap.o \
	$(obj).target/$(TARGET)/src/connection_wrap.o \
	$(obj).target/$(TARGET)/src/connect_wrap.o \
	$(obj).target/$(TARGET)/src/handle_wrap.o \
	$(obj).target/$(TARGET)/src/js_stream.o \
	$(obj).target/$(TARGET)/src/node.o \
	$(obj).target/$(TARGET)/src/node_buffer.o \
	$(obj).target/$(TARGET)/src/node_config.o \
	$(obj).target/$(TARGET)/src/node_constants.o \
	$(obj).target/$(TARGET)/src/node_contextify.o \
	$(obj).target/$(TARGET)/src/node_file.o \
	$(obj).target/$(TARGET)/src/node_http_parser.o \
	$(obj).target/$(TARGET)/src/node_javascript.o \
	$(obj).target/$(TARGET)/src/node_main.o \
	$(obj).target/$(TARGET)/src/node_os.o \
	$(obj).target/$(TARGET)/src/node_revert.o \
	$(obj).target/$(TARGET)/src/node_util.o \
	$(obj).target/$(TARGET)/src/node_v8.o \
	$(obj).target/$(TARGET)/src/node_stat_watcher.o \
	$(obj).target/$(TARGET)/src/node_watchdog.o \
	$(obj).target/$(TARGET)/src/node_zlib.o \
	$(obj).target/$(TARGET)/src/node_i18n.o \
	$(obj).target/$(TARGET)/src/pipe_wrap.o \
	$(obj).target/$(TARGET)/src/signal_wrap.o \
	$(obj).target/$(TARGET)/src/spawn_sync.o \
	$(obj).target/$(TARGET)/src/string_bytes.o \
	$(obj).target/$(TARGET)/src/stream_base.o \
	$(obj).target/$(TARGET)/src/stream_wrap.o \
	$(obj).target/$(TARGET)/src/tcp_wrap.o \
	$(obj).target/$(TARGET)/src/timer_wrap.o \
	$(obj).target/$(TARGET)/src/tty_wrap.o \
	$(obj).target/$(TARGET)/src/process_wrap.o \
	$(obj).target/$(TARGET)/src/udp_wrap.o \
	$(obj).target/$(TARGET)/src/uv.o \
	$(obj).target/$(TARGET)/src/util.o \
	$(obj).target/$(TARGET)/src/string_search.o \
	$(obj).target/$(TARGET)/src/inspector_agent.o \
	$(obj).target/$(TARGET)/src/inspector_socket.o \
	$(obj).target/$(TARGET)/src/node_crypto.o \
	$(obj).target/$(TARGET)/src/node_crypto_bio.o \
	$(obj).target/$(TARGET)/src/node_crypto_clienthello.o \
	$(obj).target/$(TARGET)/src/tls_wrap.o \
	$(obj).target/$(TARGET)/src/backtrace_posix.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).host/node_js2c.stamp $(obj).target/deps/v8/tools/gyp/v8.stamp $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a $(obj).target/tools/icu/libicui18n.a $(obj).target/tools/icu/icuuc.stamp $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/libv8_inspector_stl.a $(obj).target/deps/openssl/libopenssl.a $(builddir)/openssl-cli $(obj).target/deps/v8/tools/gyp/postmortem-metadata.stamp $(obj).target/deps/zlib/libzlib.a $(obj).target/deps/http_parser/libhttp_parser.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/deps/v8/tools/gyp/v8_maybe_snapshot.stamp $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/tools/icu/libicuucx.a $(obj).target/tools/icu/icu_implementation.stamp $(obj).target/tools/icu/icu_uconfig.stamp $(obj).target/tools/icu/icu_uconfig_target.stamp $(obj).target/tools/icu/libicudata.a $(obj).target/tools/icu/libicustubdata.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a $(obj).target/deps/v8/tools/gyp/js2c.stamp $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/inspector_injected_script.stamp $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/inspector_debugger_script.stamp $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/protocol_sources_stl.stamp $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/protocol_version.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--whole-archive,$(builddir)/obj.target/deps/openssl/libopenssl.a \
	-Wl,--no-whole-archive \
	-Wl,-z,noexecstack \
	-Wl,--whole-archive $(builddir)/obj.target/deps/v8/tools/gyp/libv8_base.a \
	-Wl,--no-whole-archive \
	-pthread

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,--whole-archive,$(builddir)/obj.target/deps/openssl/libopenssl.a \
	-Wl,--no-whole-archive \
	-Wl,-z,noexecstack \
	-Wl,--whole-archive $(builddir)/obj.target/deps/v8/tools/gyp/libv8_base.a \
	-Wl,--no-whole-archive \
	-pthread

LIBS := \
	-ldl \
	-lrt \
	-lm

$(builddir)/node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/node: LIBS := $(LIBS)
$(builddir)/node: LD_INPUTS := $(OBJS) $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a $(obj).target/tools/icu/libicui18n.a $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/libv8_inspector_stl.a $(obj).target/deps/openssl/libopenssl.a $(obj).target/deps/zlib/libzlib.a $(obj).target/deps/http_parser/libhttp_parser.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/tools/icu/libicuucx.a $(obj).target/tools/icu/libicudata.a $(obj).target/tools/icu/libicustubdata.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a
$(builddir)/node: TOOLSET := $(TOOLSET)
$(builddir)/node: $(OBJS) $(obj).target/deps/v8/tools/gyp/libv8_libplatform.a $(obj).target/tools/icu/libicui18n.a $(obj).target/deps/v8_inspector/third_party/v8_inspector/platform/v8_inspector/libv8_inspector_stl.a $(obj).target/deps/openssl/libopenssl.a $(obj).target/deps/zlib/libzlib.a $(obj).target/deps/http_parser/libhttp_parser.a $(obj).target/deps/cares/libcares.a $(obj).target/deps/uv/libuv.a $(obj).target/deps/v8/tools/gyp/libv8_base.a $(obj).target/deps/v8/tools/gyp/libv8_libbase.a $(obj).target/tools/icu/libicuucx.a $(obj).target/tools/icu/libicudata.a $(obj).target/tools/icu/libicustubdata.a $(obj).target/deps/v8/tools/gyp/libv8_snapshot.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/node
# Add target alias
.PHONY: node
node: $(builddir)/node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/node

