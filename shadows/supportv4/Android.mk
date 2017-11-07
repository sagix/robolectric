LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := Robolectric_shadows_supportv4

LOCAL_JAVA_LIBRARIES := \
  Robolectric_shadows_framework \
  Robolectric_annotations \
  Robolectric_robolectric \
  Robolectric_shadowapi \
  Robolectric_utils \
  robolectric-host-android-support-v4 \
  robolectric-host-android_all

LOCAL_ANNOTATION_PROCESSORS := \
  Robolectric_annotations \
  Robolectric_processor \
  robolectric-guava-20.0 \
  robolectric-gson-2.8

LOCAL_ANNOTATION_PROCESSOR_CLASSES := org.robolectric.annotation.processing.RobolectricProcessor

LOCAL_JAVACFLAGS := -Aorg.robolectric.annotation.processing.shadowPackage=org.robolectric.shadows.support.v4

LOCAL_SRC_FILES := $(call all-java-files-under, src/main/java)

include $(BUILD_HOST_JAVA_LIBRARY)