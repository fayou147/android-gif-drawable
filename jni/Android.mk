LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS    := -g -DHAVE_CONFIG_H
LOCAL_MODULE    := gif
LOCAL_SRC_FILES := gif.c \
	giflib/dgif_lib.c \
	giflib/gifalloc.c \
	giflib/gif_err.c 
LOCAL_LDLIBS    := -llog -ljnigraphics

include $(BUILD_SHARED_LIBRARY)
