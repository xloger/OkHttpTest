# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

######方法名等混淆指定配置
#-obfuscationdictionary ../proguard_keywords/o0O.txt
######类名混淆指定配置
#-classobfuscationdictionary ../proguard_keywords/o0O.txt
######包名混淆指定配置
#-packageobfuscationdictionary ../proguard_keywords/o0O.txt

# 保留指定类
-keep class com.faceunity.arvideo.entity.** {*;}
-keep class com.faceunity.arvideo.utils.event.StatisticEvent {*;}
-keep class com.xloger.okhttptest.TimeLineLayout { *;}

#去除日志
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** e(...);
    public static *** i(...);
    public static *** v(...);
    public static *** println(...);
    public static *** w(...);
    public static *** wtf(...);
}
-assumenosideeffects class com.faceunity.arvideo.utils.FULog {
    public static *** d(...);
    public static *** i(...);
    public static *** v(...);
}

-assumenoexternalsideeffects class java.lang.StringBuilder {

    public java.lang.StringBuilder();

    public java.lang.StringBuilder(int);

    public java.lang.StringBuilder(java.lang.String);

    public java.lang.StringBuilder append(java.lang.Object);

    public java.lang.StringBuilder append(java.lang.String);

    public java.lang.StringBuilder append(java.lang.StringBuffer);

    public java.lang.StringBuilder append(char[]);

    public java.lang.StringBuilder append(char[], int, int);

    public java.lang.StringBuilder append(boolean);

    public java.lang.StringBuilder append(char);

    public java.lang.StringBuilder append(int);

    public java.lang.StringBuilder append(long);

    public java.lang.StringBuilder append(float);

    public java.lang.StringBuilder append(double);

    public java.lang.String toString();

}


-assumenoexternalreturnvalues public final class java.lang.StringBuilder {

    public java.lang.StringBuilder append(java.lang.Object);

    public java.lang.StringBuilder append(java.lang.String);

    public java.lang.StringBuilder append(java.lang.StringBuffer);

    public java.lang.StringBuilder append(char[]);

    public java.lang.StringBuilder append(char[], int, int);

    public java.lang.StringBuilder append(boolean);

    public java.lang.StringBuilder append(char);

    public java.lang.StringBuilder append(int);

    public java.lang.StringBuilder append(long);

    public java.lang.StringBuilder append(float);

    public java.lang.StringBuilder append(double);

}

#bugly
-dontwarn com.tencent.bugly.**
-keep public class com.tencent.bugly.**{*;}
-keep class android.support.**{*;}

#eventbus
-keepattributes *Annotation*
-keepclassmembers class * {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# And if you use AsyncExecutor:
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

#FFmpegMediaMetadataRetriever
-keep class wseemann.media.** { *; }

#glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class * extends com.bumptech.glide.module.AppGlideModule {
 <init>(...);
}
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
-keep class com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$InternalRewinder {
  *** rewind();
}

#SoundTouch
-keep class net.surina.soundtouch.** {*;}


##---------------Begin: proguard configuration for Gson  ----------
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature

# For using GSON @Expose annotation
-keepattributes *Annotation*

# Gson specific classes
-dontwarn sun.misc.**
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { <fields>; }

# Prevent proguard from stripping interface information from TypeAdapter, TypeAdapterFactory,
# JsonSerializer, JsonDeserializer instances (so they can be used in @JsonAdapter)
-keep class * extends com.google.gson.TypeAdapter
-keep class * implements com.google.gson.TypeAdapterFactory
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# Prevent R8 from leaving Data object members always null
-keepclassmembers,allowobfuscation class * {
  @com.google.gson.annotations.SerializedName <fields>;
}

##---------------End: proguard configuration for Gson  ----------

# 阿里云
-keep class com.taobao.** {*;}
-keep class com.alibaba.** {*;}
-dontwarn com.taobao.**
-dontwarn com.alibaba.**
-keep class com.ut.** {*;}
-dontwarn com.ut.**
-keep class com.ta.** {*;}
-dontwarn com.ta.**


# 友盟
-keep class com.umeng.** {*;}
-keep class com.uc.** {*;}
-keepclassmembers class * {
   public <init> (org.json.JSONObject);
}
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
-keep class com.zui.** {*;}
-keep class com.miui.** {*;}
-keep class com.heytap.** {*;}
-keep class a.** {*;}
-keep class com.vivo.** {*;}